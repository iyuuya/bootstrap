#!/bin/sh

if [[ $OSTYPE == "darwin"* ]]; then
  echo "==> Install Applications ... "
  if ! command -V mas > /dev/null 2>&1; then
    brew install mas
  fi
  [ ! -d /Applications/Google\ Chrome.app ] && brew install --cask google-chrome
  [ ! -d /Applications/Alacritty.app ]      && brew install --cask alacritty
  [ ! -d /Applications/Alfred\ 4.app ]      && brew install --cask alfred
  [ ! -d /Applications/Hammerspoon.app ]    && brew install --cask hammerspoon
  [ ! -d /Applications/Dropbox.app ]        && brew install --cask dropbox
  [ ! -d /Applications/MacPass.app ]        && brew install --cask macpass
  [ ! -d /Applications/Slack.app ]          && brew install --cask slack
  [ ! -d /Applications/Discord.app ]        && brew install --cask discord
  [ ! -d /Applications/Amphetamine.app ]    && mas install 937984704
  [ ! -d /Applications/Things3.app ]        && mas install 904280696
  if [ ! -d /Library/Input\ Methods/AquaSKK.app ]; then
    brew install --cask aquaskk
    osascript -e 'tell app "System Events" to log out'
  fi
  echo "Install Applications Done!"
fi
