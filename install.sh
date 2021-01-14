#!/bin/sh

setup_macos = 0
echo "Setting up your Mac..."
sudo -v

echo "Checking if Homebrew is installed..."
# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Link installed apps to /Applications
brew linkapps

# Make Fish the default shell environment
echo "Setting up fish as default and installing oh-my-fish"
chsh -s $(which fish)
curl -L https://get.oh-my.fish | fish

# Create directory for all my code repositories.
mkdir -p $HOME/dev

# Set macOS preferences
# We will run this last because this will reload the shell
if setup_macos; then
  source .macos
fi

./symlink-setup.sh
