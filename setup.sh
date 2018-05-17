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

# Install Node
nvm install --lts
nvm use --lts

# Reset Dock
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
