#!/bin/sh
source functions/common

# Do it.
print_line "Regenerating all lists."

./tools/regenerate-brew-packages.sh
./tools/regenerate-mas-app-ids.sh