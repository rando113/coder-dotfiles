#!/usr/bin/env bash
set -e

# Symlink dotfiles
DOTFILES_DIR="$HOME/.dotfiles"

ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
# Add more as needed
