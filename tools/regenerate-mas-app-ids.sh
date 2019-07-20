#!/bin/sh
source functions/common

print_line "Regenerating the list of App Store application IDs."
mas list | cut -d' ' -f1 | sort -nr > lists/mas-app-ids
