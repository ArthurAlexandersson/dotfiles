#!/bin/sh

echo "Setting up .zsh files"

if ! command -v zsh 2>&1 >/dev/null
then
    echo "zsh could not be found"
	echo "exiting"
	exit 1
fi

cp -p ~/dotfiles/zsh/zshrc ~/.zshrc
cp -p ~/dotfiles/zsh/zsh_aliases ~/.zsh_aliases

# nice to have plugins
# echo getting plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
