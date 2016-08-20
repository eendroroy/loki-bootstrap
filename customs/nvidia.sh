#!/usr/bin/env bash
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt-get update -y
sudo apt-get install -y --force-yes nvidia-graphics-drivers-370
