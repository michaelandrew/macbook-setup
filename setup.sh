#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brewfile
brew bundle

# Reset Dock
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
