#!/bin/sh
source functions/common

print_line "Setting default settings."

print_line " - NSGlobalDomain settings import for currentHost"
defaults -currentHost import NSGlobalDomain plists/NSGlobalDomain_ByHost.plist

print_line " - Pink highlight color"
defaults write NSGlobalDomain AppleHighlightColor -string "1.000000 0.749020 0.823529 Pink"

print_line " - Pink accent color"
defaults write NSGlobalDomain AppleAccentColor -integer 6

print_line " - Show all extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

print_line " - Set key repeat rate"
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

print_line " - Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

print_line " - Disable auto-capitalization"
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

print_line " - Disable quote substitution"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

print_line " - Disable dash substitution"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

print_line " - Enable sane trackpad scrolling"
defaults write com.apple.AppleMultitouchMouse MouseHorizontalScroll -int 1
defaults write com.apple.AppleMultitouchMouse MouseVerticalScroll -int 1

print_line " - More sane trackpad scrolling"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

print_line " - Force touch enabling"
defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool true

print_line " - Dock on the left"
defaults write com.apple.dock 'orientation' -string 'left'

print_line " - Mission control: group by app"
defaults write com.apple.dock expose-group-apps -bool true
defaults write com.apple.dock expose-group-by-app -bool true

print_line " - Magnify apps on the dock"
defaults write com.apple.dock magnification -bool true

print_line " - Smallify stuff on the dock"
defaults write com.apple.dock tilesize -int 34

print_line " - Hot corner settings"
# Top left screen corner
defaults write com.apple.dock wvous-tl-corner   -int 11
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner
defaults write com.apple.dock wvous-tr-corner   -int 12
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner
defaults write com.apple.dock wvous-bl-corner   -int 2
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner
defaults write com.apple.dock wvous-br-corner   -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

print_line " - Expand save panels by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

print_line " - No more resume"
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

print_line " - Password required after screensaver"
defaults write com.apple.screensaver askForPassword -bool true
defaults write com.apple.screensaver askForPasswordDelay -int 0

print_line " - Go away Siri"
defaults write com.apple.assistant.support "Assistant Enabled" -bool false

print_line " - Give me the volume feedback back"
defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool true

print_line " - Enable Safari development"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

print_line " - Make desktop tolerable"
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

print_line " - Make finder tolerable"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder ShowRecentTags -bool false
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarMediaBrowserSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarSharedSectionDisclosedState -bool true
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarSharedSectionDisclosedState -bool true

print_line " - DS_Store, go away"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

print_line " - Battery percentage"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

