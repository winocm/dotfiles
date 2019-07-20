#!/bin/sh
source functions/common

print_line "Setting up application defaults."

# Helper function
set_defaults_for_application() {
    _app=$1
    _plist_path=plists/$_app.plist

    print_line "Setting up defaults for $_app from $_plist_path."
    defaults import $_app $_plist_path
}

# Do it now.
set_defaults_for_application com.apple.Terminal
set_defaults_for_application com.apple.finder
set_defaults_for_application com.apple.inputmethod.kotoeri