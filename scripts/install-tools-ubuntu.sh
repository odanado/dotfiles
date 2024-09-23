#!/bin/bash

set -eux

curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v3.0.1/aqua-installer
echo "fb4b3b7d026e5aba1fc478c268e8fbd653e01404c8a8c6284fdba88ae62eda6a  aqua-installer" | sha256sum -c
chmod +x aqua-installer
./aqua-installer
rm aqua-installer

zsh -c "aqua i"

zsh -c "git clone https://github.com/asdf-vm/asdf.git \$ASDF_DATA_DIR --branch v0.11.3"
