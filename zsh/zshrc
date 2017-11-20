test -t 0 || exit

bindkey -e

# env
export XDG_CONFIG_HOME=$HOME/.config
export LANG=ja_JP.UTF-8
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

source $HOME/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"

zplug "peco/peco", as:command, from:gh-r
zplug "motemen/ghq", as:command, from:gh-r
zplug "mollifier/anyframe"

zplug "powerline/powerline", use:"powerline/bindings/zsh/powerline.zsh"

zplug check || zplug install
zplug load --verbose

# for cdr
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs


# ctrl-b/f で単語単位の前進/後進
bindkey '' backward-word
bindkey '' forward-word

bindkey '' autosuggest-accept

# anyframe setting
bindkey '' anyframe-widget-put-history
bindkey '' anyframe-widget-insert-filename
bindkey '' anyframe-widget-insert-git-branch
bindkey '' anyframe-widget-cd-ghq-repository
bindkey '' anyframe-widget-execute-history
bindkey '' anyframe-widget-checkout-git-branch
alias cdg=anyframe-widget-cd-ghq-repository
alias cdra=anyframe-widget-cdr
alias tmux-a=anyframe-widget-tmux-attach


export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=500000
setopt hist_ignore_dups # 履歴の重複を無視
setopt hist_reduce_blanks # 無駄な空白を消して履歴に
