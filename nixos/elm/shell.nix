{
  pkgs ? import <nixpkgs> {}
}:

with pkgs;
stdenv.mkDerivation {
  name = "elm-composer";
  buildInputs = [ nodejs-8_x elmPackages.elm ];
  src = ./.;
  shellHook = ''
    echo 'Entering Elm Project Environment'
    export PATH=$PATH:~/Git/theConductor/result/bin/
  '';
}
