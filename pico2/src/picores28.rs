
extern crate alloc;

mod xpt2046;

use panic_halt as _;

use alloc::boxed::Box;
use alloc::rc::Rc;
use alloc::vec;
use core::cell::RefCell;
use core::convert::Infallible;
use cortex_m::interrupt::Mutex;
use cortex_m::peripheral::NVIC;
use cortex_m::singleton;
use embedded_alloc::LlffHeap as Heap;
use embedded_hal::digital::{InputPin, OutputPin};
use embedded_hal::spi::{ErrorType, Operation, SpiBus, SpiDevice};
use fugit::{Hertz, RateExtU32};

use rp235x_hal::{ self as hal, dma, gpio, pac, timer, Clock, pac::interrupt };
pub use hal::entry;
pub use hal::binary_info;
use timer::{Timer,Alarm,Alarm0,CopyableTimer0};
use gpio::{Interrupt as GpioInterrupt};
use dma::{SingleChannel, WriteTarget, DMAExt};
use slint::platform::{software_renderer as renderer, PointerEventButton, WindowEvent};
use renderer::Rgb565Pixel;

static TIMER: Mutex<RefCell<Option<Timer<CopyableTimer0>>>> = Mutex::new(RefCell::new(None));
static ALARM0: Mutex<RefCell<Option<Alarm0<CopyableTimer0>>>> = Mutex::new(RefCell::new(None));
type IrqPin = gpio::Pin<gpio::bank0::Gpio17, gpio::FunctionSio<gpio::SioInput>, gpio::PullUp>;
static IRQ_PIN: Mutex<RefCell<Option<IrqPin>>> = Mutex::new(RefCell::new(None));
const HEAP_SIZE: usize = 200 * 1024;
static mut HEAP: [u8; HEAP_SIZE] = [0; HEAP_SIZE];
const DISPLAY_SIZE: slint::PhysicalSize = slint::PhysicalSize::new(320, 240);
const XTAL_FREQ_HZ: u32 = 12_000_000u32;
const SPI_ST7789VW_MAX_FREQ: Hertz<u32> = Hertz::<u32>::Hz(62_500_000);

type SpiPins = (
    gpio::Pin<gpio::bank0::Gpio11, gpio::FunctionSpi, gpio::PullDown>,
    gpio::Pin<gpio::bank0::Gpio12, gpio::FunctionSpi, gpio::PullDown>,
    gpio::Pin<gpio::bank0::Gpio10, gpio::FunctionSpi, gpio::PullDown>,
);

type EnabledSpi = hal::Spi<hal::spi::Enabled, pac::SPI1, SpiPins, 8>;
type SpiRefCell = RefCell<(EnabledSpi, Hertz<u32>)>;

#[derive(Clone)]
struct SharedSpiWithFreq<CS> {
    refcell: &'static SpiRefCell,
    cs: CS,
    freq: Hertz<u32>,
}

impl<CS> ErrorType for SharedSpiWithFreq<CS> {
    type Error = <EnabledSpi as ErrorType>::Error;
}

impl<CS: OutputPin<Error = Infallible>> SpiDevice for SharedSpiWithFreq<CS> {
    #[inline]
    fn transaction(&mut self, operations: &mut [Operation<u8>]) -> Result<(), Self::Error> {
        let mut borrowed = self.refcell.borrow_mut();
        if borrowed.1 != self.freq {
            borrowed.0.flush()?;
            // the touchscreen and the LCD have different frequencies
            borrowed.0.set_baudrate(125_000_000u32.Hz(), self.freq);
            borrowed.1 = self.freq;
        }
        self.cs.set_low()?;
        for op in operations {
            match op {
                Operation::Read(words) => borrowed.0.read(words),
                Operation::Write(words) => borrowed.0.write(words),
                Operation::Transfer(read, write) => borrowed.0.transfer(read, write),
                Operation::TransferInPlace(words) => borrowed.0.transfer_in_place(words),
                Operation::DelayNs(_) => unimplemented!(),
            }?;
        }
        borrowed.0.flush()?;
        drop(borrowed);
        self.cs.set_high()?;
        Ok(())
    }
}

type TargetPixel = Rgb565Pixel;
type Display<DI, RST> = mipidsi::Display<DI, mipidsi::models::ST7789, RST>;

struct PartialReadBuffer(&'static mut [Rgb565Pixel], core::ops::Range<usize>);
unsafe impl embedded_dma::ReadBuffer for PartialReadBuffer {
    type Word = u8;

    unsafe fn read_buffer(&self) -> (*const <Self as embedded_dma::ReadBuffer>::Word, usize) {
        let act_slice = &self.0[self.1.clone()];
        (act_slice.as_ptr() as *const u8, act_slice.len() * core::mem::size_of::<Rgb565Pixel>())
    }
}

enum PioTransfer<TO: WriteTarget, CH: SingleChannel> {
    Idle(CH, &'static mut [TargetPixel], TO),
    Running(hal::dma::single_buffer::Transfer<CH, PartialReadBuffer, TO>),
}

impl<TO: WriteTarget<TransmittedWord = u8>, CH: SingleChannel> PioTransfer<TO, CH> {
    fn wait(self) -> (CH, &'static mut [TargetPixel], TO) {
        match self {
            PioTransfer::Idle(a, b, c) => (a, b, c),
            PioTransfer::Running(dma) => {
                let (a, b, to) = dma.wait();
                (a, b.0, to)
            }
        }
    }
}

struct DrawBuffer<Display, PioTransfer, Stolen> {
    display: Display,
    buffer: &'static mut [TargetPixel],
    pio: Option<PioTransfer>,
    stolen_pin: Stolen,
}

impl<
        DI: display_interface::WriteOnlyDataCommand,
        RST: OutputPin<Error = Infallible>,
        TO: WriteTarget<TransmittedWord = u8>,
        CH: SingleChannel,
        DC_: OutputPin<Error = Infallible>,
        CS_: OutputPin<Error = Infallible>,
    > renderer::LineBufferProvider
    for &mut DrawBuffer<Display<DI, RST>, PioTransfer<TO, CH>, (DC_, CS_)>
{
    type TargetPixel = TargetPixel;

    fn process_line(
        &mut self,
        line: usize,
        range: core::ops::Range<usize>,
        render_fn: impl FnOnce(&mut [TargetPixel]),
    ) {
        render_fn(&mut self.buffer[range.clone()]);

        // convert from little to big endian before sending to the DMA channel
        for x in &mut self.buffer[range.clone()] {
            *x = Rgb565Pixel(x.0.to_be())
        }
        let (ch, mut b, spi) = self.pio.take().unwrap().wait();
        core::mem::swap(&mut self.buffer, &mut b);

        // We send empty data just to get the device in the right window
        self.display
            .set_pixels(
                range.start as u16,
                line as _,
                range.end as u16,
                line as u16,
                core::iter::empty(),
            )
            .unwrap();

        self.stolen_pin.1.set_low().unwrap();
        self.stolen_pin.0.set_high().unwrap();
        let mut dma = hal::dma::single_buffer::Config::new(ch, PartialReadBuffer(b, range), spi);
        dma.pace(hal::dma::Pace::PreferSink);
        self.pio = Some(PioTransfer::Running(dma.start()));
    }
}

impl<
        DI: display_interface::WriteOnlyDataCommand,
        RST: OutputPin<Error = Infallible>,
        TO: WriteTarget<TransmittedWord = u8> + embedded_hal_nb::spi::FullDuplex,
        CH: SingleChannel,
        DC_: OutputPin<Error = Infallible>,
        CS_: OutputPin<Error = Infallible>,
    > DrawBuffer<Display<DI, RST>, PioTransfer<TO, CH>, (DC_, CS_)>
{
    fn flush_frame(&mut self) {
        let (ch, b, mut spi) = self.pio.take().unwrap().wait();
        self.stolen_pin.1.set_high().unwrap();

        // After the DMA operated, we need to empty the receive FIFO, otherwise the touch screen
        // driver will pick wrong values.
        // Continue to read as long as we don't get a Err(WouldBlock)
        while !spi.read().is_err() {}

        self.pio = Some(PioTransfer::Idle(ch, b, spi));
    }
}

struct PicoBackend<DrawBuffer, Touch> {
    window: RefCell<Option<Rc<renderer::MinimalSoftwareWindow>>>,
    buffer_provider: RefCell<DrawBuffer>,
    touch: RefCell<Touch>,
}

impl<
        DI: display_interface::WriteOnlyDataCommand,
        RST: OutputPin<Error = Infallible>,
        TO: WriteTarget<TransmittedWord = u8> + embedded_hal_nb::spi::FullDuplex,
        CH: SingleChannel,
        DC_: OutputPin<Error = Infallible>,
        CS_: OutputPin<Error = Infallible>,
        IRQ: InputPin<Error = Infallible>,
        SPI: SpiDevice,
    > slint::platform::Platform
    for PicoBackend<
        DrawBuffer<Display<DI, RST>, PioTransfer<TO, CH>, (DC_, CS_)>,
        xpt2046::XPT2046<IRQ, SPI>,
    >
{
    fn create_window_adapter(
        &self,
    ) -> Result<Rc<dyn slint::platform::WindowAdapter>, slint::PlatformError> {
        let window = renderer::MinimalSoftwareWindow::new(renderer::RepaintBufferType::ReusedBuffer);
        self.window.replace(Some(window.clone()));
        Ok(window)
    }

    fn duration_since_start(&self) -> core::time::Duration {
        let counter = cortex_m::interrupt::free(|cs| {
            TIMER.borrow(cs).borrow().as_ref().map(|t| t.get_counter().ticks()).unwrap_or_default()
        });
        core::time::Duration::from_micros(counter)
    }

    fn run_event_loop(&self) -> Result<(), slint::PlatformError> {
        let mut last_touch = None;

        self.window.borrow().as_ref().unwrap().set_size(DISPLAY_SIZE);
        loop {
            slint::platform::update_timers_and_animations();

            if let Some(window) = self.window.borrow().clone() {
                window.draw_if_needed(|renderer| {
                    let mut buffer_provider = self.buffer_provider.borrow_mut();
                    renderer.render_by_line(&mut *buffer_provider);
                    buffer_provider.flush_frame();
                });

                // handle touch event
                let button = PointerEventButton::Left;
                if let Some(event) = self
                    .touch
                    .borrow_mut()
                    .read()
                    .map_err(|_| ())
                    .unwrap()
                    .map(|point| {
                        let position = slint::PhysicalPosition::new(
                            (point.x * DISPLAY_SIZE.width as f32) as _,
                            (point.y * DISPLAY_SIZE.height as f32) as _,
                        )
                        .to_logical(window.scale_factor());
                        match last_touch.replace(position) {
                            Some(_) => WindowEvent::PointerMoved { position },
                            None => WindowEvent::PointerPressed { position, button },
                        }
                    })
                    .or_else(|| {
                        last_touch
                            .take()
                            .map(|position| WindowEvent::PointerReleased { position, button })
                    })
                {
                    let is_pointer_release_event =
                        matches!(event, WindowEvent::PointerReleased { .. });

                    window.dispatch_event(event);

                    // removes hover state on widgets
                    if is_pointer_release_event {
                        window.dispatch_event(WindowEvent::PointerExited);
                    }
                    // Don't go to sleep after a touch event that forces a redraw
                    continue;
                }

                if window.has_active_animations() {
                    continue;
                }
            }
            let sleep_duration = match slint::platform::duration_until_next_timer_update() {
                None => None,
                Some(d) => {
                    let micros = d.as_micros() as u32;
                    if micros < 10 {
                        // Cannot wait for less than 10µs, or `schedule()` panics
                        continue;
                    } else {
                        Some(fugit::MicrosDurationU32::micros(micros))
                    }
                }
            };

            cortex_m::interrupt::free(|cs| {
                if let Some(duration) = sleep_duration {
                    ALARM0.borrow(cs).borrow_mut().as_mut().unwrap().schedule(duration).unwrap();
                }

                IRQ_PIN
                    .borrow(cs)
                    .borrow()
                    .as_ref()
                    .unwrap()
                    .set_interrupt_enabled(GpioInterrupt::LevelLow, true);
            });
            cortex_m::asm::wfe();

        }
    }
}

#[interrupt]
fn IO_IRQ_BANK0() {
    cortex_m::interrupt::free(|cs| {
        let mut pin = IRQ_PIN.borrow(cs).borrow_mut();
        let pin = pin.as_mut().unwrap();
        pin.set_interrupt_enabled(GpioInterrupt::LevelLow, false);
        pin.clear_interrupt(GpioInterrupt::LevelLow);
    });
}

#[interrupt]
fn TIMER0_IRQ_0() {
    cortex_m::interrupt::free(|cs| {
        ALARM0.borrow(cs).borrow_mut().as_mut().unwrap().clear_interrupt();
    });
}

#[global_allocator]
static ALLOCATOR: Heap = Heap::empty();

pub fn init() {
    let mut pac = hal::pac::Peripherals::take().unwrap();
    let mut watchdog = hal::Watchdog::new(pac.WATCHDOG);
    let clocks = hal::clocks::init_clocks_and_plls(
        XTAL_FREQ_HZ,
        pac.XOSC,
        pac.CLOCKS,
        pac.PLL_SYS,
        pac.PLL_USB,
        &mut pac.RESETS,
        &mut watchdog,
    )
    .ok()
    .unwrap();

    unsafe { ALLOCATOR.init(core::ptr::addr_of_mut!(HEAP) as usize, HEAP_SIZE) }

    let mut timer = Timer::new_timer0(pac.TIMER0, &mut pac.RESETS, &clocks);
    let sio = hal::sio::Sio::new(pac.SIO);
        let pins = hal::gpio::Pins::new(
        pac.IO_BANK0,
        pac.PADS_BANK0,
        sio.gpio_bank0,
        &mut pac.RESETS,
    );
    let uart_pins = (
        pins.gpio0.into_function::<hal::gpio::FunctionUart>(),
        pins.gpio1.into_function::<hal::gpio::FunctionUart>(),
     );
    let uart = hal::uart::UartPeripheral::new(pac.UART0, uart_pins, &mut pac.RESETS)
        .enable(
            hal::uart::UartConfig::new(9600.Hz(), hal::uart::DataBits::Eight, None, hal::uart::StopBits::One),
            clocks.peripheral_clock.freq(),
        ).unwrap();
    uart.write_full_blocking(b"Hello World!\n");
    let mut touch_cs = pins.gpio16.into_push_pull_output();
    touch_cs.set_high().unwrap();
    let touch_irq = pins.gpio17.into_pull_up_input();
    touch_irq.set_interrupt_enabled(GpioInterrupt::LevelLow, true);
    cortex_m::interrupt::free(|cs| {
        IRQ_PIN.borrow(cs).replace(Some(touch_irq));
    }); 
        
    let rst = pins.gpio15.into_push_pull_output();
    let mut backlight = pins.gpio13.into_push_pull_output();
        
    let dc = pins.gpio8.into_push_pull_output();
    let cs = pins.gpio9.into_push_pull_output();
        
    let spi_sclk = pins.gpio10.into_function::<gpio::FunctionSpi>();
    let spi_mosi = pins.gpio11.into_function::<gpio::FunctionSpi>();
    let spi_miso = pins.gpio12.into_function::<gpio::FunctionSpi>();
    let spi_device = pac.SPI1;
    let spi_pin_layout = (spi_mosi, spi_miso, spi_sclk);
        
    let spi = hal::Spi::<_,_,_,8>::new(spi_device, spi_pin_layout).init(
        &mut pac.RESETS,
        clocks.peripheral_clock.freq(),
        SPI_ST7789VW_MAX_FREQ,
        &embedded_hal::spi::MODE_3,
    );
        
    // SAFETY: This is not safe :-(  But we need to access the SPI and its control pins for the PIO
    let (dc_copy, cs_copy) =
        unsafe { (core::ptr::read(&dc as *const _), core::ptr::read(&cs as *const _)) };
    let stolen_spi = unsafe { core::ptr::read(&spi as *const _) };
        
    let spi = singleton!(:SpiRefCell = SpiRefCell::new((spi, 0.Hz()))).unwrap();
    let display_spi = SharedSpiWithFreq { refcell: spi, cs, freq: SPI_ST7789VW_MAX_FREQ };
    let di = display_interface_spi::SPIInterface::new(display_spi, dc);
    let display = mipidsi::Builder::new(mipidsi::models::ST7789, di)
        .reset_pin(rst)
        .display_size(DISPLAY_SIZE.height as _, DISPLAY_SIZE.width as _)
        .orientation(mipidsi::options::Orientation::new().rotate(mipidsi::options::Rotation::Deg90))
        .invert_colors(mipidsi::options::ColorInversion::Inverted)
        .init(&mut timer)
        .unwrap();
    backlight.set_high().unwrap();
    let touch = xpt2046::XPT2046::new(
        &IRQ_PIN,
        SharedSpiWithFreq { refcell: spi, cs: touch_cs, freq: xpt2046::SPI_FREQ },
    )
    .unwrap();
    let mut alarm0 = timer.alarm_0().unwrap();
    alarm0.enable_interrupt();

    cortex_m::interrupt::free(|cs| {
        ALARM0.borrow(cs).replace(Some(alarm0));
        TIMER.borrow(cs).replace(Some(timer));
    });

    unsafe {
        NVIC::unmask(hal::pac::Interrupt::IO_IRQ_BANK0);
        NVIC::unmask(hal::pac::Interrupt::TIMER0_IRQ_0);
    }

    let dma = pac.DMA.split(&mut pac.RESETS);
    let pio = PioTransfer::Idle(
        dma.ch0,
        vec![Rgb565Pixel::default(); DISPLAY_SIZE.width as _].leak(),
        stolen_spi,
    );
    let buffer_provider = DrawBuffer {
        display,
        buffer: vec![Rgb565Pixel::default(); DISPLAY_SIZE.width as _].leak(),
        pio: Some(pio),
        stolen_pin: (dc_copy, cs_copy),
    };
    slint::platform::set_platform(Box::new(PicoBackend {
        window: Default::default(),
        buffer_provider: buffer_provider.into(),
        touch: touch.into(),
    }))
    .unwrap();
}

#[link_section = ".start_block"]
#[used]
pub static IMAGE_DEF: hal::block::ImageDef = hal::block::ImageDef::secure_exe();

