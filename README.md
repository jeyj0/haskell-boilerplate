# haskell-boilerplate

Use `./full-build.sh` to build the project. Afterwards, the binary can be found in `./result/bin/`. 

While developing, you can use `./build-dev.sh` for incremental builds.

To change the project name, change all occurrences of "boilerplate" to the new project name. Also rename the `boilerplate.cabal` file.

## Requirements

- Install nix
- Install direnv and lorri, using nix: `nix-env -iA nixpkgs.lorri nixpkgs.direnv`
  - hook direnv into your shell: https://direnv.net/docs/hook.html

## How to use

- make sure the lorri daemon is running
  - https://github.com/target/lorri/blob/master/contrib/daemon.md
- cd into the project directory
  - if you see a message from direnv saying to allow the `.envrc`, run `direnv allow` after making sure you trust this project
  - run `./generate-default.nix.sh`
  - after a while `nix` should have installed the dependencies and you should be able to use for example ghci 


