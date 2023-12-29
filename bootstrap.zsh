#!/bin/zsh

if [[ $OSTYPE == "darwin"* ]]; then
  zsh mac/hostname.zsh
  zsh mac/command_line_tools.zsh
  zsh mac/homebrew.zsh
  zsh mac/app.zsh
fi

zsh common/dotfiles.zsh
