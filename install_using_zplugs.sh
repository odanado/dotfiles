#!/usr/bin/env zsh

source $HOME/.zplug/init.zsh

zplug "syndbg/goenv", as:"command", use:"bin/*"

zplug check || zplug install
