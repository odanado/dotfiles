export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:=$HOME/.local/share}

export PATH=$HOME/.local/bin:$PATH

export LANG=ja_JP.UTF-8
export LC_ALL=$LANG

export HISTFILE=$HOME/.zsh_history
export HISTSIZE=1000
export SAVEHIST=500000

# for zsh
export ZDOTDIR=${ZDOTDIR:=${XDG_CONFIG_HOME}/zsh}

if [ -f "$HOME/.cargo/env" ]; then
    . "$HOME/.cargo/env"
fi
