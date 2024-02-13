with import <nixpkgs> {};
mkShell {
  name = "zerotier-rust-api";
  buildInputs = with pkgs; [
    cacert
    cargo
    curl
    openssl
    pkg-config
  ];

  PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
