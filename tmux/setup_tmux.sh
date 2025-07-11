#!/bin/sh

echo "Setting up tmux configuration..."

# Determine the script's directory
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Source and destination
SRC="$SCRIPT_DIR/tmux.conf"
DEST="$HOME/.tmux.conf"

# Backup existing config if it exists
if [ -f "$DEST" ]; then
    echo "Backing up existing ~/.tmux.conf to ~/.tmux.conf.backup"
    cp "$DEST" "$DEST.backup"
fi

# Move or copy the config file
cp "$SRC" "$DEST"
echo "Done: ~/.tmux.conf is set."
