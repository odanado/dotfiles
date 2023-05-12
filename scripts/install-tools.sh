#!/bin/bash

set -eux

curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v2.1.1/aqua-installer
echo "c2af02bdd15da6794f9c98db40332c804224930212f553a805425441f8331665  aqua-installer" | sha256sum -c
chmod +x aqua-installer
./aqua-installer
rm aqua-installer

zsh -c "aqua i"

zsh -c "git clone https://github.com/asdf-vm/asdf.git \$ASDF_DATA_DIR --branch v0.11.3"
