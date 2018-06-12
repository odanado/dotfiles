#/bin/sh

pip install --user -r requirements.txt
if type "pip3" > /dev/null 2>&1
then
    pip3 install --user -r requirements.txt
fi

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
