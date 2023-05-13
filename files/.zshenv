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

# for asdf
export ASDF_DATA_DIR="${XDG_DATA_HOME}/asdf"
export ASDF_CONFIG_FILE="${XDG_CONFIG_HOME}/asdfrc"

# for aqua
export PATH="${XDG_DATA_HOME}/aquaproj-aqua/bin:$PATH"
export AQUA_CONFIG="${XDG_CONFIG_HOME}/aquaproj-aqua/aqua.yaml"
