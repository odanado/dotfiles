#!/bin/sh

mkdir -p $HOME/.config
ln -snfv $PWD/config/dein $HOME/.config/
ln -snfv $PWD/config/nvim $HOME/.config/
ln -snfv $PWD/tmux.conf $HOME/.tmux.conf
ln -snfv $PWD/zsh $HOME/.zsh

ln -snfv $PWD/zsh/zshenv $HOME/.zshenv
