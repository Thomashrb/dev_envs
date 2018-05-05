using node2nix like so to generate a deviation, and build elm oracle derivation
(this is needed because elm-oracle does not exist in nixpkgs)

```bash
  node2nix -8 -i node-packages.json
  nix build
```

the resulting binary is then linked into the env together with elm from nixpkgs when running

```bash
   nix-shell
```
