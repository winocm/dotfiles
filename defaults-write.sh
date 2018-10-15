#!/bin/sh

echo "- Pink highlight color"
defaults write NSGlobalDomain AppleHighlightColor -string "1.000000 0.749020 0.823529 Pink"

echo "- Pink accent color"
defaults write NSGlobalDomain AppleAccentColor -integer 6

echo "- Show all extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "- Set key repeat rate"
defaults write NSGlobalDomain InitialKeyRepeat -int 15
defaults write NSGlobalDomain KeyRepeat -int 2

echo "- Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "- Disable auto-capitalization"
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

echo "- Disable quote substitution"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "- Disable dash substitution"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

echo "- Enable sane trackpad scrolling"
defaults write com.apple.AppleMultitouchMouse MouseHorizontalScroll -int 1
defaults write com.apple.AppleMultitouchMouse MouseVerticalScroll -int 1

echo "- More sane trackpad scrolling"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "- Force touch enabling"
defaults write NSGlobalDomain com.apple.trackpad.forceClick -bool true

echo "- Dock on the left"
defaults write com.apple.dock 'orientation' -string 'left'

echo "- Mission control: group by app"
defaults write com.apple.dock expose-group-by-app -bool false

echo "- Magnify apps on the dock"
defaults write com.apple.dock magnification -bool true

echo "- Smallify stuff on the dock"
defaults write com.apple.dock tilesize -int 34

echo "- Hot corner settings"
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

echo "- Expand save panels by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

echo "- No more resume"
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

echo "- Password required after screensaver"
defaults write com.apple.screensaver askForPassword -bool true
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "- Go away Siri"
defaults write com.apple.assistant.support "Assistant Enabled" -bool false

echo "- Give me the volume feedback back"
defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool true

echo "- Enable Safari development"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

echo "- Make desktop tolerable"
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo "- Make finder tolerable"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder ShowRecentTags -bool false
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarMediaBrowserSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarSharedSectionDisclosedState -bool true
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarSharedSectionDisclosedState -bool true

echo "- DS_Store, go away"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "- Battery percentage"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

