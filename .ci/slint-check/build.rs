use std::collections::HashMap;

fn main() {
    let res = std::env::var("SLINT_RES")
        .expect("set SLINT_RES=<WxH> (e.g. SLINT_RES=1024x600)");
    let manifest = std::path::PathBuf::from(
        std::env::var_os("CARGO_MANIFEST_DIR").unwrap(),
    );
    let repo = manifest.join("../..");
    let design = repo.join(format!("design/slint/{res}"));
    let main = repo.join("slint/main.slint");

    println!("cargo:rerun-if-env-changed=SLINT_RES");
    println!("cargo:rerun-if-changed={}", design.display());
    println!("cargo:rerun-if-changed={}", main.display());

    slint_build::compile_with_config(
        main,
        slint_build::CompilerConfiguration::new()
            .with_library_paths(HashMap::from([(
                "design".to_string(),
                design,
            )])),
    )
    .unwrap();
}
