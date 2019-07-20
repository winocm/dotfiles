#!/bin/sh
source functions/common

print_line "Restarting userspace in 5 seconds."
sleep 5

# Restart userspace now
sudo launchctl reboot userspace
