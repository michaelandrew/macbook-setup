#!/usr/bin/env bash

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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

# Instal NVM
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

# Reset Dock
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
