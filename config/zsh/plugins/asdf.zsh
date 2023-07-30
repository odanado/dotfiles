include () {
  [[ -f "$1" ]] && source "$1"
}

include "$ASDF_DATA_DIR/asdf.sh"

type -p brew >/dev/null && . $(brew --prefix asdf)/libexec/asdf.sh