#!/bin/zsh

CWD=$(dirname $0:A)


# If git doesn't exist on $PATH then install it before proceeding
if ! which "git" > /dev/null; then
	printf "Git was not found. Installing XCode build tools...\n"
	xcode-select --install
fi


# Set the global gitignore file
if [[ ! "$(git config --global core.excludesfile)" == "$CWD/global.gitignore" ]]; then
	printf "Global gitignore is set to \"$(git config --global core.excludesfile)\". Changing to \"$CWD/global.gitignore\"\n"
	git config --global core.excludesfile "$CWD/data/git/global.gitignore"
fi


# Set git config name
GIT_NAME="Evan O'Connor"
if [[ ! "$(git config --global user.name)" == "$GIT_NAME" ]]; then
	printf "Setting name to: \"$GIT_NAME\" in git config\n"
	git config --global user.name "$GIT_NAME"
fi


# Set git config email
GIT_EMAIL="evanoc3@gmail.com"
if [[ ! "$(git config --global user.email)" == "$GIT_EMAIL" ]]; then
	printf "Setting Git global email to: \"$GIT_EMAIL\"\n"
	git config --global user.email "$GIT_EMAIL"
fi