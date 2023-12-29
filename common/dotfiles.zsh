#!/bin/zsh

if [ ! -d ~/.local/src/github.com/iyuuya/dotfiles ]; then
  git clone https://github.com/iyuuya/dotfiles ~/.local/src/github.com/iyuuya/dotfiles
else
  git -C ~/.local/src/github.com/iyuuya/dotfiles pull
fi
