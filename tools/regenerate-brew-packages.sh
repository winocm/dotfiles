#!/bin/sh
source functions/common

print_line "Regenerating the list of Homebrew packages."
brew cask list > lists/brew-cask-packages

print_line "Regenerating the list of Homebrew cask packages."
brew list > lists/brew-packages
