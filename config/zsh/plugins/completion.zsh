include () {
  [[ -f "$1" ]] && source "$1"
}

type -p brew >/dev/null && include $(brew --caskroom)/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

eval "$(direnv hook zsh)"
eval "$(aqua completion zsh)"
