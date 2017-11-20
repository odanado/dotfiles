
if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi

export PATH=$HOME/.nodebrew/current/bin:$PATH


export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

export LANG=ja_JP.UTF-8
export PATH="/usr/local/opt/llvm/bin:$PATH"
