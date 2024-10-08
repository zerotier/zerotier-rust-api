fn main() {
    let src = "openapi.yaml";
    println!("cargo:rerun-if-changed={}", src);
    let file = std::fs::File::open(src).unwrap();
    println!("file:{:?}", file);
    let spec = serde_yaml::from_reader(file).unwrap();
    let mut generator = progenitor::Generator::default();

    let tokens = generator.generate_tokens(&spec).unwrap();
    let ast = syn::parse2(tokens).unwrap();
    let content = prettyplease::unparse(&ast);

    let mut out_file = std::path::Path::new(&std::env::var("OUT_DIR").unwrap()).to_path_buf();
    out_file.push("codegen.rs");

    std::fs::write(out_file, content).unwrap();
}
