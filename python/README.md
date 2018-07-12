I like to use pip to build the python project and as such I have made a shell.nix file that pulls in pip and sets the pip-catalog to ./pip_packages

```bash
   $ nix-shell
   $ pip install -e .
```
