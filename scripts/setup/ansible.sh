#!/bin/bash

set -eu

os=$(uname -s | tr '[A-Z]' '[a-z]')

case $os in
    darwin)
        ansible-playbook --verbose -i ansible-playbook/local ansible-playbook/mac.yml
    ;;
    linux)
        ansible-playbook --verbose -i ansible-playbook/local ansible-playbook/ubuntu.yml
    ;;
esac
