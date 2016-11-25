#!/usr/bin/env bash
if [[ -f /etc/apt/sources.list.d/virtualbox.list ]]; then
  echo "########## PPA already added. Skipping ..."
else
  echo "########## Adding virtualbox ppa ..."
  echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
  wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
  sudo apt-get update -y
fi

echo "########## Installing virtualbox-5.1"
sudo apt-get install virtualbox-5.1 -y --force-yes
