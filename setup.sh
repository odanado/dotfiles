#!/bin/bash

set -eu

# ansible-playbook --verbose -i ansible-playbook/local ansible-playbook/ubuntu.yml
ansible-playbook --verbose -i ansible-playbook/local ansible-playbook/mac.yml
# zsh -ic "zplug check || zplug install" > /dev/null 2>&1