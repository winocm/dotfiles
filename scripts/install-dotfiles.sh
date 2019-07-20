#!/bin/sh
source functions/common

print_line "Copying default settings files..."

# Copy my gitconfigs...
ditto -v dotfiles/gitconfig ~/.gitconfig
ditto -v dotfiles/gitignore ~/.gitignore
ditto -v dotfiles/clang-format ~/.clang-format

# Copy over bash settings
ditto -v dotfiles/bashrc ~/.bashrc
ditto -v dotfiles/bash_profile ~/.bash_profile