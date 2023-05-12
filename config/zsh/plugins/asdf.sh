include () {
  [[ -f "$1" ]] && source "$1"
}

include "$HOME/.asdf/asdf.sh"

type -p brew >/dev/null && . $(brew --prefix asdf)/libexec/asdf.sh