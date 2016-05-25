
if [ -f $HOME/.bashrc ]; then
	. $HOME/.bashrc
fi

export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

