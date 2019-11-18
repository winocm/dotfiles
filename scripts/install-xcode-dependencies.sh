#!/bin/sh
source functions/common

print_line "Setting up Xcode."

# Set up Xcode.
sudo xcode-select -switch /Applications/Xcode.app

xcrun --kill-cache
xcodebuild -runFirstLaunch