with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "rust-env";
  buildInputs = [
    rustracer
    rustPlatform.rustcSrc
    rustc
    rustfmt
    cargo

  ];

  # Set Environment Variables
  # RUST_BACKTRACE = 1;
  RUST_SRC_PATH = "${rustPlatform.rustcSrc}";
