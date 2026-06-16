#!/usr/bin/env bash
set -euo pipefail

echo "Running as: $(id)"
echo "HOME=$HOME"

DOTFILES_DIR="$HOME/.config/coderv2/dotfiles"

ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"

# Delete leftovers that prevent Chrome from launching
rm -f ~/.config/google-chrome/SingletonLock || echo "Good! No Chrome SingletonLock"
rm -f ~/.config/google-chrome/SingletonSocket || echo "Good! No Chrome SingletonSocket"
rm -f ~/.config/google-chrome/SingletonCookie || echo "Good! No Chrome SingletonCookie"

#ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
#ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Install Node.js via nvm, then Claude Code + Codex via npm (installed for the coder user).
# The nvm installer appends the NVM_DIR / nvm.sh / bash_completion lines to ~/.bashrc

source ~/.bashrc

if [[ -z "$(which claude)" ]] ; then
  export NVM_DIR="$HOME/.nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  nvm install --lts
  npm install -g @anthropic-ai/claude-code @openai/codex
fi

