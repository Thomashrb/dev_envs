```
$ docker build -t scala_metals_ide:smi .
$ docker run -it --name smi --detach scala_metals_ide:smi /bin/bash
$ docker container ls
CONTAINER ID        IMAGE                  COMMAND             CREATED             STATUS              PORTS               NAMES
f20a4899af2f        scala_metals_ide:smi   "/bin/bash"         14 seconds ago      Up 13 seconds       8089/tcp            smi
```
