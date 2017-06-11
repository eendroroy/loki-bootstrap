#!/usr/bin/env bash

release_name=`lsb_release -csu 2> /dev/null || lsb_release -cs 2> /dev/null`
[[ "$release_name" = "" ]] && release_name="xenial"

if [[ -f /etc/apt/sources.list.d/dotnetdev.list ]]; then
  echo "########## .NET already isntalled. Skipping ..."
else
  echo "########## Installing dotnet ..."
  echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ ${release_name} main" | sudo tee /etc/apt/sources.list.d/dotnetdev.list
  sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
  sudo apt-get update -y
  sudo apt-get install -y --force-yes dotnet-dev-1.0.0-preview2-003156
fi
