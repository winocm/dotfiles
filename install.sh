#!/bin/bash
ditto -v .gitconfig ~/.gitconfig
ditto -v .gitignore ~/.gitignore

IFS=$'\n'
for i in `cat brew-packages`; do
    brew install $i;
done
for i in `cat brew-cask-packages`; do
    brew cask install $i;
done
