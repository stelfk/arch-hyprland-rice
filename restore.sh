#!/bin/bash

# Define the backup directory path
BACKUP_DIR="./config-backup"

# Restore the .config directory
echo "Restoring configuration files from $BACKUP_DIR"
cp -r "$BACKUP_DIR/config/" ~/.config/

# Restore .zshrc (or any other dotfiles you'd like to restore)
cp "$BACKUP_DIR/.zshrc" ~/

# (Optional) Restore any other specific files or directories
# cp -r "$BACKUP_DIR/bin" ~/.local/

echo "Restoration complete!"
