#/usr/bin/env bash

if [[ -f /etc/apt/sources.list.d/google.list ]]; then
  if cat /etc/apt/sources.list.d/google.list | grep chrome > /dev/null ; then
    echo "########## chrome ppa already added. Skipping ..."
  else
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
  fi

  if cat /etc/apt/sources.list.d/google.list | grep musicmanager > /dev/null ; then
    echo "########## musicmanager ppa already added. Skipping ..."
  else
    echo "deb [arch=amd64] http://dl.google.com/linux/musicmanager/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
  fi
  
  if cat /etc/apt/sources.list.d/google.list | grep talkplugin > /dev/null ; then
    echo "########## talkplugin ppa already added. Skipping ..."
  else
    echo "deb [arch=amd64] http://dl.google.com/linux/talkplugin/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
  fi
else
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
  echo "deb [arch=amd64] http://dl.google.com/linux/musicmanager/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
  echo "deb [arch=amd64] http://dl.google.com/linux/talkplugin/deb/ stable main" | sudo tee -a /etc/apt/sources.list.d/google.list
fi

sudo apt-get update -y
sudo apt-get install -y --force-yes \
  google-chrome-stable \
  google-musicmanager-beta \
  google-talkplugin
sudo apt-get autoremove -y
sudo apt-get autoclean -y
