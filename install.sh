#!/usr/bin/env bash

# Relink configuration.
rm -rf "$HOME/.config/nvim"
ln -sf "$PWD" "$HOME/.config/nvim"

# Remove any existing artifacts.
rm -rf ~/.local/state/nvim ~/.local/share/nvim ~/.cache/nvim
