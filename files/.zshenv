export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:=$HOME/.local/share}

export ZDOTDIR=${ZDOTDIR:=${XDG_CONFIG_HOME}/zsh}

# for aqua
export PATH="${XDG_DATA_HOME}/aquaproj-aqua/bin:$PATH"
#export AQUA_ROOT_DIR=${XDG_DATA_HOME:-$HOME/.local/share}/aqua
# export AQUA_GLOBAL_CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}/aqua/aqua.yaml
export AQUA_CONFIG="${XDG_CONFIG_HOME}/aquaproj-aqua/aqua.yaml"

export PATH=$HOME/.local/bin:$PATH
