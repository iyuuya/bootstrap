#!/bin/sh

if [[ $OSTYPE == "darwin"* ]]; then
  printf "==> Install Homebrew ..."
  if ! command -V brew > /dev/null 2>&1; then
    printf "\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  else
    printf " OK\n"
  fi
fi
