test -t 0 || exit

bindkey -e

POWERLINE_ROOT=$(dirname $(python3 -c "import powerline; print(powerline.__file__)"))
. $POWERLINE_ROOT/bindings/zsh/powerline.zsh

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=500000
setopt hist_ignore_all_dups # 同じコマンドをヒストリに保存しない
setopt hist_reduce_blanks # 無駄なスペースを消してヒストリに保存する
setopt share_history # ヒストリを共有

# anyenv
eval "$(anyenv init - zsh)"

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