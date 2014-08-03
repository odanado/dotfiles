#!/bin/bash

#共通部分
alias ls='ls --color=auto'
export PS1="\[\e[1;32m\]\u:\[\e[00m\]\[\e[1;34m\]\w\$\[\e[00m\] "
export PATH=$PATH":."

if [ -d "$HOME/local/vim" ]; then
    export PATH="$HOME/local/vim/bin:$PATH"
fi

if [ -d "$HOME/local/gcc" ]; then
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/local/gcc/lib:$HOME/local/gcc/lib64"
    export PATH="$HOME/local/gcc/bin:$PATH"
    export LIBRARY_PATH="$LIBRARY_PATH:$HOME/local/gcc/lib64/"
    export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$HOME/local/gcc/include/c++/4.8.3/:$HOME/local/gcc/include/c++/4.8.3/x86_64-unknown-linux-gnu/"
fi

if [ -d "$HOME/local/clang" ]; then
    export PATH="$HOME/local/clang/bin:$PATH"
fi

if [ `uname` = "CYGWIN_NT-6.1" ] ; then
    #win

    alias sublimetext="/cygdrive/c/Program\ Files/Sublime\ Text\ 2/sublime_text.exe"
    export PATH=$PATH":/usr/local/graphviz/bin"


fi

