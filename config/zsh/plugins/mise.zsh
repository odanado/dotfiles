include () {
  [[ -f "$1" ]] && source "$1"
}

if [ "$(uname)" = "Darwin" ]; then
  eval "$(/opt/homebrew/bin/mise activate zsh)"
fi
