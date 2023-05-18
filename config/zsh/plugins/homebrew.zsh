test "$(uname)" = "Darwin" || return

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
