#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/.config/coderv2/dotfiles"

ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
#ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
#ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
# Add more as needed

