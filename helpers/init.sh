#!/usr/bin/env bash

sudo sed -i "s|bd.||g" /etc/apt/sources.list

sudo dpkg --add-architecture i386

# init update
update
upgrade
clean

