#!/usr/bin/env zsh

source $HOME/.zplug/init.zsh

zplug check || zplug install

if [ ! -s "$HOME/.gvm/scripts/gvm" ]; then
    echo "install gvm"
    zsh < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
fi

if [ ! -s "$HOME/.ndenv" ]; then
    echo "install ndenv"
    git clone https://github.com/riywo/ndenv ~/.ndenv
    git clone https://github.com/riywo/node-build.git $(ndenv root)/plugins/node-build
fi
