#!/bin/sh

mkdir -p $HOME/.config
ln -sfhv $PWD/config/dein $HOME/.config/
ln -sfhv $PWD/config/nvim $HOME/.config/
ln -sfhv $PWD/tmux.conf $HOME/.tmux.conf
ln -sfhv $PWD/zsh $HOME/.zsh
