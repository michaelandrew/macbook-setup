#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brewfile
brew bundle

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable

# Source RVM
source ~/.rvm/scripts/rvm

# Install Ruby using RVM
rvm install 2.3
rvm use 2.3 --default

# Enable RVM auto update
echo rvm_autoupdate_flag=2 >> ~/.rvmrc

# Source NVM
source $HOME/.nvm/nvm.sh

# Install Node
nvm install --lts
nvm use --lts

# Reset Dock
defaults delete com.apple.dock; killall Dock

# Reset Launchpad
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock

# Install Global NPM packages
npm install --global eslint
npm install --global gatsby-cli

# Install VS Code Extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
