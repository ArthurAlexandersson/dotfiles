#!/bin/bash

# Source and destination directories
SRC="$HOME/dotfiles/nvim"
DEST="$HOME/.config/nvim"

# Create destination directory if it doesn't exist
mkdir -p "$DEST"

# Clear destination to mimic cp -rT behavior (replacing DEST with SRC content)
rm -rf "$DEST"/*
rm -rf "$DEST"/.??* 2>/dev/null  

# Copy all files and directories, preserving attributes and symlinks
cp -a "$SRC"/. "$DEST"

echo "Nvim setup copied from $SRC to $DEST"
