#!/usr/bin/env bash
function upgrade {
  sudo apt-get upgrade -y --force-yes;
  sudo apt-get dist-upgrade -y --force-yes;
}
