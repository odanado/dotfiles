#!/bin/bash

# alias
alias ls='ls --color=auto'

# export
export PATH=$PATH":."
export EDITOR=vim

# 履歴を増やす
HISTSIZE=50000

if [ `uname` = "Darwin" ]; then
    export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
    alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
    alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

    alias ls='ls -G'
    alias g='/usr/local/Cellar/gcc/5.3.0/bin/g++-5 -std=c++11 -Wall -O2'
fi

if [ -f ~/.bash_powerline.sh ]; then
    source ~/.bash_powerline.sh
fi

agent="$HOME/.ssh/agent"
if [ -S "$SSH_AUTH_SOCK" ]; then
    case $SSH_AUTH_SOCK in
        /tmp/*/agent.[0-9]*)
            ln -snf "$SSH_AUTH_SOCK" $agent && export SSH_AUTH_SOCK=$agent
    esac
elif [ -S $agent ]; then
    export SSH_AUTH_SOCK=$agent
else
    echo "no ssh-agent"
fi
