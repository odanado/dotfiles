include () {
  [[ -f "$1" ]] && source "$1"
}


if [ "$OS" = "Darwin" ]; then
  eval "$(/opt/homebrew/bin/mise activate zsh)"
fi

if [ "$OS" = "Linux" ]; then
  eval "$(~/.local/bin/mise activate zsh)"
fi
