#!/bin/sh

ln -s $PWD/bashrc $HOME/.bash_aliases
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > ~/install.sh
sh ~/install.sh
