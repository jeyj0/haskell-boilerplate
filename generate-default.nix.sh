#!/usr/bin/env sh

nix-shell --pure -p cabal2nix --run "cabal2nix ." > default.nix
