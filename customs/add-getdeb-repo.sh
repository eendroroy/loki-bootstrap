#!/usr/bin/env bash
if [[ -f /etc/apt/sources.list.d/getdeb.list ]]; then
  echo "########## getded pa already added. Skipping ..."
else
  echo "########## Adding getdeb ppa ..."
  echo "http://github.com/eendroroy/loki-bootstrap.git" | sudo tee /etc/apt/sources.list/getdeb.list
  sudo cp sources.list/getdeb.list.xenial /etc/apt/sources.list.d/getdeb.list
  sudo apt-get update -y --force-yes
fi
