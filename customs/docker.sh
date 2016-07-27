#!/usr/bin/env bash
function _install_docker {
	echo "########## Trying to install docker"
	if which docker > /dev/null ; then
		echo "########## docker already installed. Skipping ..."
	else
		sudo apt-get purge lxc-docker -y --force-yes
		sudo apt-get install docker-engine -y --force-yes
		sudo groupadd docker
		sudo gpasswd -a ${USER} docker
		sudo service docker restart
		newgrp docker
	fi
}

if [[ -f /etc/apt/sources.list.d/docker.list ]]; then
	echo "########## PPA already added. Skipping ..."
else
	sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A91
	sudo cp files/docker.list /etc/apt/sources.list.d/docker.list
	sudo apt-get update -y --force-yes
fi

_install_docker
