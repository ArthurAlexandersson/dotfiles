#!/bin/sh

echo "Setting up .zsh files"

if ! command -v zsh 2>&1 >/dev/null
then
    echo "zsh could not be found"
	echo "exiting"
	exit 1
fi

cp -R -u -p ~/dotfiles/zsh/zshrc ~/.zshrc
cp -R -u -p ~/dotfiles/zsh/zsh_aliases ~/.zsh_aliases

