#!/bin/sh
# Installs NVM to manage node versions.
# Installs some useful npm packages globally.

echo -e "\n\nInstalling Node (from nvm)"
echo "=============================="

# reload nvm into this environment
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
source ~/.zshrc

nvm install stable;
nvm alias default stable;

npm i -g standard nodemon http-server svgo
