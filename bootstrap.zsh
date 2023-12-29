#!/bin/zsh

if [[ $OSTYPE == "darwin"* ]]; then
  zsh mac/hostname.zsh
fi

zsh common/dotfiles.zsh
