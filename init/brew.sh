#!/usr/bin/env bash

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install Python
brew install pyenv

# Install Java11
brew cask install adoptopenjdk/openjdk/adoptopenjdk11

# Install golang
brew install go

# Install Bash 4.
brew install bash
# Install more recent versions of some OS X tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install xz
brew install rename
brew install awscli

# Databases
brew install postgresql

# git things
brew install git
brew install git-lfs
git lfs install
git lfs install --system

# Development tool casks
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" pycharm-ce
brew cask install --appdir="/Applications" visual-studio-code
# Misc casks
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" shiftit
brew cask install --appdir="/Applications" pritunl
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" google-chrome

# Install Docker
brew install docker docker-compose

# Remove outdated versions from the cellar.
brew untap adoptopenjdk/openjdk
brew untap caskroom/versions
brew cleanup

# install ZSH (last because it changes shell and stops commands)
brew install zsh zsh-completions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
