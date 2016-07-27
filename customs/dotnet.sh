#!/usr/bin/env bash
if [[ -f /etc/apt/sources.list.d/dotnetdev.list ]]; then
  echo "########## .NET already isntalled. Skipping ..."
else
  echo "########## Installing dotnet ..."
  # echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" | sudo tee /etc/apt/sources.list.d/dotnetdev.list
  sudo cp sources.list/dotnetdev.list.xenial /etc/apt/sources.list.d/dotnetdev.list
  sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
  sudo apt-get update -y
  sudo apt-get install -y --force-yes dotnet-dev-1.0.0-preview2-003121
fi
