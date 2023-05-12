#!/bin/bash

set -eux

# insatll sheldon
#curl --proto '=https' -fLsS https://rossmacarthur.github.io/install/crate.sh \
#    | bash -s -- --repo rossmacarthur/sheldon --to ~/.local/bin

curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v2.1.1/aqua-installer
echo "c2af02bdd15da6794f9c98db40332c804224930212f553a805425441f8331665  aqua-installer" | sha256sum -c
chmod +x aqua-installer
./aqua-installer

rm aqua-installer

zsh -c "aqua install"
