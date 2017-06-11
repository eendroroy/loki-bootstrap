#!/usr/bin/env bash
latest_version=`curl https://releases.hashicorp.com/vagrant/ | grep "/vagrant/" | head -1 | tr "/" " " | awk '{print $4}'`
if which vagrant > /dev/null; then
  installed_version=`vagrant -v | awk '{print $2}'`
  if [[ "${latest_version}" == "${installed_version}" ]]; then
    echo "########## Latest version of vagrant is already installed. Skipping ..."
  else
    echo "########## Updating vagrant from v${installed_version} to v${latest_version} ..."
    sudo apt-get remove --purge -y --force-yes vagrant
    wget -O /tmp/vagrant.deb "https://releases.hashicorp.com/vagrant/${latest_version}/vagrant_${latest_version}_x86_64.deb"
    sudo dpkg -i /tmp/vagrant.deb
    sudo apt-get install -f
  fi
else
  echo "########## Installing vagrant ..."
  wget -O /tmp/vagrant.deb "https://releases.hashicorp.com/vagrant/${latest_version}/vagrant_${latest_version}_x86_64.deb"
  sudo dpkg -i /tmp/vagrant.deb
  sudo apt-get install -f
  rm /tmp/vagrant.deb
fi
