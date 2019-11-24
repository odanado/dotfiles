test -t 0 || test ! -z $CI || exit

source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"

zplug "mollifier/anyframe"

zplug "powerline/powerline", use:"powerline/bindings/zsh/powerline.zsh"

zplug "simonwhitaker/gibo", use:"gibo-completion.zsh"

zplug load --verbose

bindkey -e

# ctrl-b/f で単語単位の前進/後進
bindkey '' backward-word
bindkey '' forward-word

bindkey '' autosuggest-accept

setopt hist_ignore_all_dups # 同じコマンドをヒストリに保存しない
setopt hist_reduce_blanks # 無駄なスペースを消してヒストリに保存する
setopt share_history # ヒストリを共有

source $ZDOTDIR/.zshrc.anyframe

# anyenv
eval "$(anyenv init - zsh)"

source $ZDOTDIR/.gcloud-completion.zsh

# tmuxでもssh-agentが継続されるように
agent="$HOME/.ssh/agent"
if [ -S "$SSH_AUTH_SOCK" ]; then
    case $SSH_AUTH_SOCK in
    /tmp/*/agent.[0-9]*)
        ln -snf "$SSH_AUTH_SOCK" $agent && export SSH_AUTH_SOCK=$agent
    esac
elif [ -S $agent ]; then
    export SSH_AUTH_SOCK=$agent
fi