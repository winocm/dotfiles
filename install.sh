#!/bin/bash

# Copy my gitconfigs...
ditto -v .gitconfig ~/.gitconfig
ditto -v .gitignore ~/.gitignore

ditto -v .clang-format ~/.clang-format

# Install homebrew.
if [ ! -f /usr/local/bin/brew ]; then
    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install long list of packages.
IFS=$'\n'
for i in `cat brew-packages`; do
    brew install $i;
done
for i in `cat brew-cask-packages`; do
    brew cask install $i;
done
for i in `cat mas-app-ids`; do
    mas install $i;
done

# Set sane defaults
./defaults-write.sh

# Start services
brew services start mariadb
brew services start redis
