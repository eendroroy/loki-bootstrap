#!/usr/bin/env bash

release_name=`lsb_release -csu 2> /dev/null || lsb_release -cs 2> /dev/null`
[[ "$release_name" = "" ]] && release_name="xenial"

if [[ -f /etc/apt/sources.list.d/virtualbox.list ]]; then
  echo "########## PPA already added. Skipping ..."
else
  echo "########## Adding virtualbox ppa ..."
  echo "deb http://download.virtualbox.org/virtualbox/debian ${release_name} contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
  wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
  sudo apt-get update -y
fi

echo "########## Installing virtualbox-5.1"
sudo apt-get install virtualbox-5.1 -y --force-yes
