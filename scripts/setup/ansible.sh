#!/bin/bash

set -e

os=$(uname -s | tr '[A-Z]' '[a-z]')

case $os in
    darwin)
        if [ -v $GITHUB_WORKFLOW ]; then
            PLAYBOOK=ansible-playbook/mac-ci.yml
        else
            PLAYBOOK=ansible-playbook/mac.yml
        fi
    ;;
    linux)
        PLAYBOOK=ansible-playbook/ubuntu.yml
    ;;
esac

ansible-playbook --verbose -i ansible-playbook/local $PLAYBOOK