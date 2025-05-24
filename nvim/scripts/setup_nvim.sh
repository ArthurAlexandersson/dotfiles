#!/bin/bash

# Source and destination directories
SRC="$HOME/dotfiles/nvim"
DEST="$HOME/.config/nvim"

# Create destination directory if it doesn't exist
mkdir -p "$DEST"

# Copy all files and directories, preserving permissions and symbolic links
cp -rT "$SRC" "$DEST"

echo "Nvim setup copied from $SRC to $DEST"
