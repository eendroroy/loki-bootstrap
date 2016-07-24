#!/usr/bin/env bash
if [[ -f /etc/apt/sources.list.d/virtualbox.list ]]; then
    echo "########## PPA already added. Skipping ..."
    echo "########## Trying to install virtualbox-5.0"
    sudo apt-get install virtualbox-5.0 -y --force-yes
else
    echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
    sudo apt-get update -y
    sudo apt-get install virtualbox-5.0 -y --force-yes
fi
