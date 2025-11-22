if [ "$(uname)" = "Darwin" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ "$(uname)" = "Linux" ]; then
  eval "$(~/.local/bin/mise activate zsh)"
fi

eval "$(sheldon source)"
