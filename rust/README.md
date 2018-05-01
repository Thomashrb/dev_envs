rustLatest refers to

```bash
$ cat .config/nixpkgs/config.nix
{
  packageOverrides = super: let self = super.pkgs; in rec
  {
    .....
    
    rustNightlyNixRepo = super.fetchFromGitHub {
         owner = "solson";
         repo = "rust-nightly-nix";
         rev = "9e09d579431940367c1f6de9463944eef66de1d4";
         sha256 = "03zkjnzd13142yla52aqmgbbnmws7q8kn1l5nqaly22j31f125xy";
    };
    rustNightly = super.callPackage rustNightlyNixRepo { };

    rustLatest = rustNightly.rust {};
    
    .....
  };
}

```
