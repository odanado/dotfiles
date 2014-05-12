#!/bin/bash

#共通部分
alias ls='ls --color=auto'
export PS1="\[\e[1;32m\]\u:\[\e[00m\]\[\e[1;34m\]\w\$\[\e[00m\] "
export PATH=$PATH":."



if [ `uname` = "CYGWIN_NT-6.1" ] ; then
	#win
    
    alias sublimetext="/cygdrive/c/Program\ Files/Sublime\ Text\ 2/sublime_text.exe"
	export PATH=$PATH":/usr/local/graphviz/bin"


fi
