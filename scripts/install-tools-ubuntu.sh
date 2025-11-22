#!/bin/bash

set -eux

curl https://mise.run | sh

mise use -g github:cli/cli
mise use -g github:peco/peco
mise use -g github:rossmacarthur/sheldon
mise use -g github:starship/starship
mise use -g "github:direnv/direnv[bin=direnv]"
