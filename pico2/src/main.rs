#![no_std]
#![no_main]

mod picores28;
use picores28::binary_info;
use picores28::init;

slint::include_modules!();

#[picores28::entry]
fn main() -> ! {
    init();
    let app = Application::new().unwrap();
    app.run().unwrap();
    panic!("The event loop should not return");
}

/// Program metadata for `picotool info`
#[link_section = ".bi_entries"]
#[used]
pub static PICOTOOL_ENTRIES: [binary_info::EntryAddr; 3] = [
    // binary_info::rp_program_name!(),
    binary_info::rp_cargo_version!(),
    binary_info::rp_program_description!(c"Slint demo for ET+2024."),
    // binary_info::rp_program_url!(),
    binary_info::rp_program_build_attribute!(),
];
