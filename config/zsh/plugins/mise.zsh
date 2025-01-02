include () {
  [[ -f "$1" ]] && source "$1"
}


eval "$(/opt/homebrew/bin/mise activate zsh)"
