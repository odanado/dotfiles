#!/bin/bash

set -eux

OS="$(uname)"

if [ "$OS" = "Darwin" ]; then
  ./scripts/install-tools-macos.sh
fi

if [ "$OS" = "Linux" ]; then
  ./scripts/install-tools-ubuntu.sh
fi
