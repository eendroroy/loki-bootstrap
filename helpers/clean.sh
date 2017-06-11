#!/usr/bin/env bash
function clean {
  sudo apt-get autoremove -y --force-yes
  sudo apt-get autoclean -y --force-yes
  sudo apt-get install -f -y --force-yes
}
