#!/bin/sh
source functions/common

# Install long list of packages.
IFS=$'\n'

print_line "Installing Homebrew packages."
cat lists/brew-packages | xargs brew install

print_line "Installing Homebrew cask packages."
cat lists/brew-cask-packages | xargs brew cask install

print_line "Installing App Store applications."
cat lists/mas-app-ids | xargs mas install
