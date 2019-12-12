#!/usr/bin/env bash

# Only open items on the dock
defaults write com.apple.dock static-only -bool true; killall Dock

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles YES.

# Use "List View" in finder
defaults write com.apple.finder FXPreferredViewStyle Nlsv