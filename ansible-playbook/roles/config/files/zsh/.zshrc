test -t 0 || test ! -z $CI || exit

include () {
    [[ -f "$1" ]] && source "$1"
}


eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(sheldon --quiet source)"

autoload -U compinit && compinit

bindkey -e

# ctrl-b/f で単語単位の前進/後進
bindkey '' backward-word
bindkey '' forward-word

bindkey '' autosuggest-accept

setopt hist_ignore_all_dups # 同じコマンドをヒストリに保存しない
setopt hist_reduce_blanks # 無駄なスペースを消してヒストリに保存する
setopt share_history # ヒストリを共有

# ls に色をつける
export LSCOLORS=Gxfxcxdxbxegedabagacad
alias ls="ls -G"

source $ZDOTDIR/.zshrc.anyframe

include /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

eval "$(anyenv init - zsh)"
eval "$(direnv hook zsh)"

eval "$(starship init zsh)"
