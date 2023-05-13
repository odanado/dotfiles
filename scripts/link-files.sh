#!/bin/bash

set -eux

ln -sf $PWD/files/.gitconfig $HOME/.gitconfig
ln -sf $PWD/files/.gitignore $HOME/.gitignore
ln -sf $PWD/files/.zshenv $HOME/.zshenv

ln -sf $PWD/config/* $HOME/.config
