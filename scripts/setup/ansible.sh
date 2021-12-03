#!/bin/bash

set -e

PLAYBOOK=ansible-playbook/mac.yml

echo "run playbook: $PLAYBOOK"
ansible-playbook --verbose -i ansible-playbook/local $PLAYBOOK