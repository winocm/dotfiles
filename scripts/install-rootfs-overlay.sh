#!/bin/sh
source functions/common

print_line "Installing the root filesystem overlay."

# Install the Root FS overlay root.
_root_path=$(mktemp -d)/rootfs_overlay.tar.gz
pushd rootfs_overlay > /dev/null
tar cfz $_root_path .
popd > /dev/null

print_line "Root path: $_root_path"
sudo darwinup install $_root_path