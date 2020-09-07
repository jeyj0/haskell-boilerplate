#!/usr/bin/env bash

ls src/**/*.hs | entr -c "./.build-dev.sh"
