#!/bin/sh

if [[ $OSTYPE == "darwin"* ]]; then
  printf "==> Change HostName "

  OLD_NAME=$(scutil --get HostName)
  base64serial=$(system_profiler SPHardwareDataType | grep Serial | awk '{ print $4 }' | base64)
  hostname=$OLD_NAME

  if [ "$base64serial" = "QzA3QzUxMzhKWVcwCg==" ]; then
   hostname="iMi"
  fi

  printf "$OLD_NAME to $hostname ... "

  if [ "$OLD_NAME" != "$hostname" ]; then
    sudo scutil --set ComputerName $hostname
    sudo scutil --set LocalHostName $hostname
    sudo scutil --set HostName $hostname
    echo "$OLD_NAME to $hostname"
  fi
  echo "OK"
fi
