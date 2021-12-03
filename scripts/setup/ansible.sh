#!/bin/bash

set -e

PLAYBOOK=ansible-playbook/mac.yml

echo "run playbook: $PLAYBOOK"
ansible-playbook -i ansible-playbook/local $PLAYBOOK