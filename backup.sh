#!/bin/bash

# Define the backup directory path (adjust this as needed)
BACKUP_DIR="./config-backup"

# Create the backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Backup the .config directory
echo "Backing up ~/.config to $BACKUP_DIR"
cp -r ~/.config "$BACKUP_DIR/"

# Backup .zshrc (or any other dotfiles you'd like to backup)
cp ~/.zshrc "$BACKUP_DIR/"

# (Optional) Backup any other specific files or directories
# cp -r ~/.local/bin "$BACKUP_DIR/"

echo "Backup complete!"
