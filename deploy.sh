#!/bin/sh

ln -sf $PWD/bashrc $HOME/.bash_aliases
ln -sf $PWD/vimrc $HOME/.vimrc
ln -sf $PWD/vim $HOME/.vim
ln -sf $PWD/bash_powerline.sh  $HOME/.bash_powerline.sh
ln -sf $PWD/tmux.conf $HOME/.tmux.conf
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/install.sh
sh ~/install.sh
