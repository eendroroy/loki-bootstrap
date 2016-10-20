#!/usr/bin/env bash

# adding ppa
if [[ -f /etc/apt/sources.list.d/docker.list ]]; then
  echo "########## PPA already added. Skipping ..."
else
  echo "########## adding docker ppa ..."
  sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A91
  echo "deb http://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
  # sudo cp sources.list/docker.list.xenial /etc/apt/sources.list.d/docker.list
  sudo apt-get update -y --force-yes
fi

# installing
if which docker > /dev/null ; then
  echo "########## docker already installed. Skipping ..."
else
  echo "########## Installing docker ..."
  sudo apt-get purge lxc-docker -y --force-yes
  sudo apt-get install docker-engine -y --force-yes
  sudo groupadd docker
  sudo gpasswd -a ${USER} docker
  sudo service docker restart
fi
