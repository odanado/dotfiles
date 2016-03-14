#!/bin/bash

# alias
alias ls='ls --color=auto'

# export
export PS1="\[\e[1;32m\]\u:\[\e[00m\]\[\e[1;34m\]\w\$\[\e[00m\] "
export PATH=$PATH":."
export EDITOR=vim

# 履歴を増やす
HISTSIZE=50000

if [ `uname` = "Darwin" ]; then
    export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
    alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
    alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

    alias ls='ls -G'
fi

