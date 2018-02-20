# Load Node global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Load custom commands
# Disabled this because I have no custom binaries at the moment.
export PATH="$DOTFILES/bin:$PATH"

# Local bin directories before anything else
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Golang path settings
export GOPATH="$CODE/golang"
export PATH="$PATH:$GOPATH/bin"

export ELM_MAKE_PATH="$HOME/.nvm/versions/node/v6.11.0/bin/elm-make"
export PATH="$PATH:$ELM_MAKE_PATH"
# Pyenv root
export PYENV_ROOT=/usr/local/var/pyenv
