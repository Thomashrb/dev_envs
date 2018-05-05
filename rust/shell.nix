with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "rust-env";
  buildInputs = [
    rustLatest
    rustracer
    rustfmt
    cargo
    rustc
  ];

}
