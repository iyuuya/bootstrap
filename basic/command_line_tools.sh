#!/bin/sh

if [[ $OSTYPE == "darwin"* ]]; then
  printf "==> Install Command Line Tools ... "
  if ! xcode-select -p > /dev/null 2>&1; then
    xcode-select --install
    while ! xcode-select -p > /dev/null 2>&1; do
      sleep 5
    done
  fi
  echo "OK"
fi
