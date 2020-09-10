# haskell-boilerplate

Use `./full-build.sh` to build the project. Afterwards, the binary can be found in `./result/bin/`. 

While developing, you can use `./build-dev.sh` for incremental builds on file save and `./test-dev.sh` for test-reruns on file save.

To change the project name, change all occurrences of "boilerplate" to the new project name. Also rename the `boilerplate.cabal` file.

## Requirements

- nix the package manager (https://nixos.org/download.html)

### Optional

Note: If you do not set up lorri and direnv, you will have to enter a nix-shell with the `nix-shell` command to use the developer tools.

- Install direnv and lorri, using nix: `nix-env -iA nixpkgs.lorri nixpkgs.direnv`
  - hook direnv into your shell: https://direnv.net/docs/hook.html
  - make sure the lorri daemon is running
    - to set it up to run in the background: https://github.com/target/lorri/blob/master/contrib/daemon.md
  - cd into the project directory
    - if you see a message from direnv saying to allow the `.envrc`, run `direnv allow` after making sure you trust this project
    - run `./generate-default.nix.sh`
    - after a while `nix` should have installed the dependencies and you should be able to use for example ghci in your shell directly, without needing to use `nix-shell`

## Scripts

### Not required to be in a nix-shell

- `./generate-default.nix.sh` generates a `default.nix` file based on the `boilerplate.cabal` file
- `./build.sh` compiles the project, the result will be in `./result/bin/`
- `./full-build.sh` executes the two scripts above

### Requires to be in a nix-shell

If you haven't properly set up direnv and lorri, you will have to first enter a nix-shell with the `nix-shell` command to use these scripts.

For those who have, you should only have to be in the project directory.

- `./build-dev.sh` compiles the project on every file change, for quick feedback
- `./test.sh` runs the project's tests once
- `./test-dev.sh` runs the project's tests on file change

## What you get

Apart from all project dependencies being properly set up (including ghc (the haskell compiler) and ghci), there's also some development tools that are automatically set up for you:

### Requires to be in nix-shell

If you haven't properly set up direnv and lorri, you will have to first enter a nix-shell with the `nix-shell` command to use these.

For those who have, you should only have to be in the project directory.

- haskell-language-server (https://github.com/haskell/haskell-language-server) (see their documentation for how to set it up with your editor of choice)
  - for use within VSCod(e/ium), install the haskell-language-server VSCod(e/ium) extension and start VSCod(e/ium) from within the project directory (or nix-shell for those who haven't set up lorri and direnv)
- entr (https://eradman.com/entrproject/) (a command-line file-watcher, used in the scripts)

## Mac users

Nix seems to want to recompile ghc and cabal when installing the project dependencies the first time. Run nix-shell after setting everything up and wait for a LONG time until it's done. This has taken 16 hours before, so don't do it when you need your Mac for heavy tasks in the time, or don't have access to power.

