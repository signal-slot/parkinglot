#![no_std]
#![no_main]

slint::include_modules!();

#[mcu_board_support::entry]
fn main() -> ! {
    mcu_board_support::init();
    let app = Application::new().unwrap();
    app.run().unwrap();
    panic!("The event loop should not return");
}

// End of file
