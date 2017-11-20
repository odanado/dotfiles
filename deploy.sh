#!/bin/sh

mkdir -p $HOME/.config

ln -snfv $PWD/config/dein $HOME/.config/
ln -snfv $PWD/config/nvim $HOME/.config/

ln -snfv $PWD/gitconfig $HOME/.gitconfig

ln -snfv $PWD/tmux.conf $HOME/.tmux.conf

ln -snfv $PWD/vimrc $HOME/.vimrc

ln -snfv $PWD/zsh/zshrc $HOME/.zshrc
ln -snfv $PWD/zsh/zshrc.darwin $HOME/.zshrc.darwin
ln -snfv $PWD/zsh/zshrc.linux $HOME/.zshrc.linux
ln -snfv $PWD/zsh/zshenv $HOME/.zshenv
