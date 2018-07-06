#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Install data stores
brew install mysql
brew install postgresql
brew install mongo
brew install redis
brew install elasticsearch

# Remove outdated versions from the cellar.
brew cleanup