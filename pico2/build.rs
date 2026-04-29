use std::collections::HashMap;

fn main() {
    let res = std::env::var("PICO_RES").unwrap_or_else(|_| "320x240".into());
    let design = std::path::PathBuf::from(format!("../design/slint/{res}"));
    println!("cargo:rerun-if-env-changed=PICO_RES");
    println!("cargo:rerun-if-changed={}", design.display());

    slint_build::compile_with_config(
        "ui/main.slint",
        slint_build::CompilerConfiguration::new()
            .embed_resources(slint_build::EmbedResourcesKind::EmbedForSoftwareRenderer)
            .with_library_paths(HashMap::from([("design".to_string(), design)])),
    )
    .unwrap();
}
