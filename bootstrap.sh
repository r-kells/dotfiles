#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# install updates and CLI tools
# bash init/osxprep.sh
# Install the things!
# bash init/brew.sh

# Symlink dot & zshrc files (dotglob gets hidden files)
shopt -s dotglob

for f in dots/*; do
    echo symlinking $DIR/"$f" to "~/$(basename $f)"    
    ln -s -f $DIR/"$f" ~/$(basename "$f");
done;
unset f;

shopt -u dotglob

# Symlink the static dir for app preferences
ln -s -f $DIR/static ~/static;

# Run osx setup
# bash init/osx.sh