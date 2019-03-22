#!/usr/bin/env zsh

source $HOME/.zplug/init.zsh

zplug check || zplug install

if [ ! -s "$HOME/.nodenv" ]; then
    echo "install nodenv"
    git clone https://github.com/nodenv/nodenv.git ~/.nodenv
    mkdir -p "$(nodenv root)"/plugins
    git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
fi
