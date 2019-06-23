#!/bin/bash

# Copy my gitconfigs...
ditto -v .gitconfig ~/.gitconfig
ditto -v .gitignore ~/.gitignore
ditto -v .clang-format ~/.clang-format

# Copy over bash settings
ditto -v .bashrc ~/.bashrc
ditto -v .bash_profile ~/.bash_profile
sudo chsh -s /bin/sh $(whoami)

# Install homebrew.
if [ ! -f /usr/local/bin/brew ]; then
    xcode-select --install
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

cat brew-packages | xargs brew install
cat brew-cask-packages | xargs brew cask install
cat mas-app-ids | xargs mas install

# Install long list of packages.
IFS=$'\n'

# Set sane defaults
./defaults-write.sh

sudo xcodebuild -license accept

# Add the old style motd
echo 'Welcome to Darwin!' | sudo tee /etc/motd > /dev/null

# Start services
brew services start mariadb
brew services start redis

# Restart userspace
sudo launchctl reboot userspace
