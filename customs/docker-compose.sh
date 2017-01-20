#!/usr/bin/env bash
if which docker-compose > /dev/null; then
  echo "########## docker-compose already installed. Skipping ..."
else
  last_release=`curl -i https://api.github.com/repos/docker/compose/releases | grep "\"tag_name\"" | tr "\"" " " | awk '{print $3}' | head -1`
  echo "########## Installing docker-compose ..."
  curl -L https://github.com/docker/compose/releases/download/${last_release}/docker-compose-`uname -s`-`uname -m` > docker-compose
  sudo mv docker-compose /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
fi
