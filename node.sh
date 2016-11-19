#!/bin/sh
# Installs NVM to manage node versions.
# Installs some useful npm packages globally.

echo -e "\n\nInstalling Node (from nvm)"
echo "=============================="

# reload nvm into this environment
source $(brew --prefix nvm)/nvm.sh

nvm install stable
nvm alias default stable

npm i -g standard nodemon http-server
