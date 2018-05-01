using node2nix like so to generate a deviation, and build elm oracle

```bash
  node2nix -8 -i node-packages.json
  nix build
```

the resulting binary is then linked into the env when running

```bash
   nix-shell
```
