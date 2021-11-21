#!/bin/bash

set -eu

rm -f result.txt


os=$(uname -s | tr '[A-Z]' '[a-z]')

case $os in
    darwin)
        TIME_COMMAND=gtime
    ;;
    linux)
        TIME_COMMAND=time
    ;;
esac

# 初回はインストールがあるので別で実行しておく
zsh -i -c exit

{ for i in $(seq 1 10); do $TIME_COMMAND --format="%e" zsh -i -c exit; done } 2> result.txt


RESULT=$(cat result.txt | awk '{ total += $1 } END { print total/NR }')

cat<<EOJ
[
    {
        "name": "zsh load time",
        "unit": "Second",
        "value": ${RESULT}
    }
]
EOJ
