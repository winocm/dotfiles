#!/bin/sh
source functions/common

print_line "Setting shell for $(whoami) to bash."
sudo chsh -s /bin/bash $(whoami)
