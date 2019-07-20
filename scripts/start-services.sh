#!/bin/sh
source functions/common

print_line "Setting up services to start on login."

# Start services
brew services start mariadb
brew services start redis
