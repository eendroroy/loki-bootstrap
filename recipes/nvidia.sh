#!/usr/bin/env bash
sudo add-apt-repository --remove -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt-get update -y
sudo apt-get install -y --force-yes nvidia-370
sudo apt-get autoremove -y
sudo apt-get autoclean -y
