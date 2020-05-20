#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brewfile
brew bundle

# Set up NVM
mkdir ~/.nvm

# Copy .bash_profile
cp .bash_profile ~/.profile

# Source .profile
source ~/.profile

# Install Node
nvm install --lts
nvm use --lts

# Reset Launchpad
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock

# Install Global NPM packages
npm install --global eslint
npm install --global typescript
npm install --global gatsby-cli
npm install --global @angular/cli

# Install VS Code Extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode

# Complete Heroku Installation
heroku autocomplete
