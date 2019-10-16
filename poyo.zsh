#!/usr/bin/env zsh
. ~/.zshenv
. $ZDOTDIR/.zshrc
echo $PATH | tr ':' '\n'
zplug check || zplug install