#!/bin/bash

set -eu

os=$(uname -s | tr '[A-Z]' '[a-z]')

exec < /dev/tty

case $os in
    darwin)
        ansible-playbook --verbose -i ansible-playbook/local ansible-playbook/mac.yml
    ;;
    linux)
        ansible-playbook --verbose -i ansible-playbook/local ansible-playbook/ubuntu.yml
    ;;
esac

zsh -ic "zplug check || zplug install"