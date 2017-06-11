#!/usr/bin/env bash
function install-package {
  echo "########## installing package:"
  echo "########## $1 ...."
  sudo apt-get install -y --force-yes $1
}
