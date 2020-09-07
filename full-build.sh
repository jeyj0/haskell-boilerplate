#!/usr/bin/env sh

echo "##### Regenerating default.nix #####"
./generate-default.nix.sh

echo "##### Building using release.nix #####"
./build.sh
