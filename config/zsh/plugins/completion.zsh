include () {
  [[ -f "$1" ]] && source "$1"
}

type -p brew >/dev/null && include $(brew --caskroom)/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
type -p aqua >/dev/null && eval "$(aqua completion zsh)"
type -p gibo >/dev/null && eval "$(gibo completion zsh)"

eval "$(direnv hook zsh)"
