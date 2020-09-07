# haskell-boilerplate

Use `./full-build.sh` to build the project. Afterwards, the binary can be found in `./result/bin/`. 

While developing, you can use `./build-dev.sh` for incremental builds.

To change the project name, change all occurrences of "boilerplate" to the new project name. Also rename the `boilerplate.cabal` file.

## Requirements

- Install nix
- Install direnv and lorri, using nix: `nix-env -iA nixpkgs.lorri nixpkgs.direnv`
  - hook direnv into your shell
