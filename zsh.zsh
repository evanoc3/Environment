#!/bin/zsh

CWD=$(dirname $0:A)


# If ZSH is not already the default shell, then set it to be
if [[ $SHELL != *zsh ]]; then
	where_zsh="$(which zsh)"
	printf "Setting default shell to \"${where_zsh}\"\n"
	chsh -s "${where_zsh}"
fi


# Install the 'Oh My ZSH' framework
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  printf "Installing the 'Oh My ZSH' framework\n"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi


# Replace .zshrc
if [[ -e "$HOME/.zshrc" ]]; then
	printf "Removing previous .zshrc file\n"
	rm "$HOME/.zshrc"
fi
printf "Symlinking \"$CWD/data/zsh/zshrc\" to \"$HOME/.zshrc\"\n"
ln -s "$CWD/data/zsh/zshrc" "$HOME/.zshrc"
