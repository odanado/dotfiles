#!/usr/bin/env zsh

source $HOME/.zplug/init.zsh

zplug check || zplug install

echo "install gvm"
zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
