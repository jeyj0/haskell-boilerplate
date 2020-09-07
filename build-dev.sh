#!/usr/bin/env sh

ls src/**/*.hs | entr -c "./.build-dev.sh"
