#!/usr/bin/env bash
function add-repo {
  echo "########## installing ppa:"
  echo "########## $1 ...."
  sudo add-apt-repository --remove -y "ppa:$1";
  sudo add-apt-repository -y "ppa:$1";
}
