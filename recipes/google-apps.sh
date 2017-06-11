#/usr/bin/env bash

if [[ -f /etc/apt/sources.list.d/google-chrome.list ]]; then
  echo "########## chrome ppa already added. Skipping ..."
else
  echo "########## installing google-chrome ppa ...."
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google-chrome.list
fi

if [[ -f /etc/apt/sources.list.d/google-talkplugin.list ]]; then
  echo "########## talkplugin ppa already added. Skipping ..."
else
  echo "########## installing google-talkplugin ppa ...."
  echo "deb [arch=amd64] http://dl.google.com/linux/talkplugin/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google-talkplugin.list
fi

sudo apt-get update -y
sudo apt-get install -y --force-yes \
  google-chrome-stable \
  google-talkplugin
sudo apt-get autoremove -y
sudo apt-get autoclean -y
