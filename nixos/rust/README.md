Iv stopped using rustNightly as I found the contants new builds to
be a hassle to compile every time I wanted to enter my env.

The only difference in config however to use rust nightly is that i use
https://github.com/solson/rust-nightly-nix like so:

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

then I use these overrides in my shell.nix instead of the standard ones.
