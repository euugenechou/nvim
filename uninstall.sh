#!/usr/bin/env bash

# Unlink configuration.
unlink -f "$HOME/.config/nvim"

# Remove existing artifacts.
rm -rf "$HOME/.local/share/nvim"
rm -rf "$HOME/.local/state/nvim"
rm -rf "$HOME/.cache/nvim"
