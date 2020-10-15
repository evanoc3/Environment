#!/bin/zsh

# If brew doesn't exist on $PATH then install it before proceeding
if ! which "brew" > /dev/null; then
	printf "Brew was not found. Installing...\n"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install brew packages
xargs brew install < ./data/brew/brew.txt

# Install brew cask packages
xargs brew cask install < ./data/brew/cask.txt
