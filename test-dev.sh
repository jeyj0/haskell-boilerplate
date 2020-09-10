#!/usr/bin/env sh

ls src/**/*.hs | entr -c cabal run library-tests
