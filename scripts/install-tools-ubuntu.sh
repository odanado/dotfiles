#!/bin/bash

set -eux

# curl -sSfL -O https://raw.githubusercontent.com/aquaproj/aqua-installer/v3.0.1/aqua-installer
# echo "fb4b3b7d026e5aba1fc478c268e8fbd653e01404c8a8c6284fdba88ae62eda6a  aqua-installer" | sha256sum -c
# chmod +x aqua-installer
# ./aqua-installer
# rm aqua-installer

# zsh -c "aqua i"

curl https://mise.run | sh

mise use -g github:cli/cli
mise use -g github:peco/peco
mise use -g github:peco/peco
mise use -g github:rossmacarthur/sheldon
mise use -g github:starship/starship
mise use -g github:direnv/direnv