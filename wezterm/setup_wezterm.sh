#!/bin/sh
echo "Setting up wezterm config"
if ! command -v wezterm 2>&1 >/dev/null
then
    echo "wezterm could not be found"
	echo "exiting"
	exit 1
fi

cp -R -u -p ~/dotfiles/wezterm ~/.config

echo "wezterm setup!"
