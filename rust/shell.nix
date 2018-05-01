with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "rust-env";
  buildInputs = [
    rustLatest
    racer
    rustfmt
    cargo
    rustc
  ];

}
