include () {
    [[ -f "$1" ]] && source "$1"
}

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export ZDOTDIR=${ZDOTDIR:=${XDG_CONFIG_HOME}/zsh}

export LANG=ja_JP.UTF-8
export LC_ALL=$LANG

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000
export SAVEHIST=500000

export PATH=$HOME/.anyenv/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

include $HOME/.local.zshenv
