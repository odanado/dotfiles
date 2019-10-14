#!/bin/bash

ansible-playbook -i ansible-playbook/local ansible-playbook/mac.yml
zsh -ic "zplug check || zplug install"