# Animals GO
Main entry to build, install and deploy Animals GO

# Build local & Dev
The build environment and all dependencies can be loaded using the command :

```shell
. env.sh
```

The GOPATH will be defined to current folder.

The code will be downloaded from different repositories and compiled in current GOPATH.

To rebuild the code use the script :

```shell
./build.sh all | PACKAGE-NAME
```

# Deploy on Docker
A dedicated script allow to deploy all service or several containers :

```shell
./docker-rebuild.sh all | PACKAGE-NAME
```