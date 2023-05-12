test "$(uname)" = "Darwin" || return

eval "$(/opt/homebrew/bin/brew shellenv)"

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

. $(brew --prefix asdf)/libexec/asdf.sh