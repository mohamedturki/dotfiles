#!/bin/sh

echo "Setting up your Mac..."
sudo -v

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Link installed apps to /Applications
brew linkapps

# Remove outdated versions from the cellar.
brew cleanup
brew cask cleanup

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Create directory for all my code repositories.
mkdir $HOME/dev

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
./symlink-setup.sh
./node.sh
