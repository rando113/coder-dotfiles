#!/usr/bin/env bash
set -e

DOTFILES_DIR="$HOME/.config/coderv2/dotfiles"

ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"

# Delete leftovers that prevent Chrome from launching
rm -f ~/.config/google-chrome/SingletonLock || echo "Good! No Chrome SingletonLock"
rm -f ~/.config/google-chrome/SingletonSocket || echo "Good! No Chrome SingletonSocket"
rm -f ~/.config/google-chrome/SingletonCookie || echo "Good! No Chrome SingletonCookie"

#ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
#ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
# Add more as needed

