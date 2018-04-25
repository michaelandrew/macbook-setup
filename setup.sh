#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brewfile
brew bundle

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable

# Source RVM
source ~/.rvm/scripts/rvm

# Reset Dock
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
