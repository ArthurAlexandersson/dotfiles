#!/bin/sh
echo "Setting up wezterm config"

if ! command -v wezterm 2>&1 >/dev/null
then
    echo "wezterm could not be found"
    echo "installing wezterm"
    curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
    echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
    sudo chmod 644 /usr/share/keyrings/wezterm-fury.gpg
    sudo apt update

    ARCH=$(uname -m)

    if["$ARCH" = "aarch64"] || ["$ARCH" = "arm64"]; then
        sudo apt install wezterm
    else
        sudo apt install wezterm-nightly
fi



cp -R -u -p ~/dotfiles/wezterm ~/.config

echo "wezterm setup!"
