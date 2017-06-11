#!/usr/bin/env bash

release_name=`lsb_release -csu 2> /dev/null || lsb_release -cs 2> /dev/null`
[[ "$release_name" = "" ]] && release_name="xenial"

if [[ -f /etc/apt/sources.list.d/getdeb.list ]]; then
  echo "########## getded pa already added. Skipping ..."
else
  echo "########## Adding getdeb ppa ..."
  echo "deb http://archive.getdeb.net/ubuntu ${release_name}-getdeb apps" | sudo tee /etc/apt/sources.list.d/getdeb.list
  wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
  sudo apt-get update -y --force-yes
fi
