use std::{path::PathBuf, str::FromStr};

fn main() {
    let src = PathBuf::from_str("openapi.json").unwrap();
    let file = std::fs::File::open(src).unwrap();
    let spec = serde_json::from_reader(file).unwrap();
    let mut generator = progenitor::Generator::default();

    let content = generator.generate_text(&spec).unwrap();

    let out_file = std::path::Path::new(&std::env::var("OUT_DIR").unwrap()).to_path_buf();
    std::fs::write(out_file.join("codegen.rs"), content).unwrap();
}
