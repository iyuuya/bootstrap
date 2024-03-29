#!/bin/sh

if [ ! -d  ~/.local/src/github.com/iyuuya/bootstrap ]; then
  git clone https://github.com/iyuuya/bootstrap ~/.local/src/github.com/iyuuya/bootstrap
else
  git -C ~/.local/src/github.com/iyuuya/bootstrap pull
fi

if [ -d  ~/.local/src/github.com/iyuuya/bootstrap ]; then
  cd ~/.local/src/github.com/iyuuya/bootstrap && zsh ./bootstrap.zsh
fi
