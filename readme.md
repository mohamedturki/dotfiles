# Dries's Dotfiles

## What Is This?

This repository serves as my way to help me setup and maintain my Mac. It takes the effort out of installing everything manually. Everything which is needed to install my preffered setup of macOS is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy! :smile:

Read the blog post: https://driesvints.com/blog/getting-started-with-dotfiles

## A Fresh macOS Setup

Follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Copy public and private SSH keys to `~/.ssh` and make sure they're set to `600`
5. Clone this repo to `~/.dotfiles`
7. Run `install.sh` to start the installation

Your Mac is now ready to use!

## Todo
1. Add Atom and Vim config.
2. Install nvm
