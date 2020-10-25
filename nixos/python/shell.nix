{ pkgs ? import <nixpkgs> {} }:
  with pkgs;
  python35Packages.buildPythonApplication {
    name = "python-project";
    buildInputs =   [
      python36Packages.pip
    ];
    shellHook = ''
      echo "Entering Python Project Environment"

      # extra packages can be installed here
      unset SOURCE_DATE_EPOCH
      export PIP_PREFIX="$(pwd)/pip_packages"
      python_path=(
        "$PIP_PREFIX/lib/python3.6/site-packages"
        "$PYTHONPATH"
      )
      # use double single quotes to escape bash quoting
      IFS=: eval 'python_path="''${python_path[*]}"'
      export PYTHONPATH="$python_path"
      export MPLBACKEND='Qt4Agg'
      export PATH="$PATH:$PWD/pip_packages/bin"

    '';
  }
