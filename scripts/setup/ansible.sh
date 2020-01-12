#!/bin/bash

set -e

os=$(uname -s | tr '[A-Z]' '[a-z]')

case $os in
    darwin)
        if [ -z "$GITHUB_WORKFLOW" ] && [ "${GITHUB_WORKFLOW:-A}" = "${GITHUB_WORKFLOW-A}" ]; then
            PLAYBOOK=ansible-playbook/mac.yml
        else
            PLAYBOOK=ansible-playbook/mac-ci.yml
        fi
    ;;
    linux)
        PLAYBOOK=ansible-playbook/ubuntu.yml
    ;;
esac


echo "run playbook: $PLAYBOOK"
ansible-playbook --verbose -i ansible-playbook/local $PLAYBOOK