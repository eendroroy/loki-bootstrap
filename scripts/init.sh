#!/usr/bin/env bash
sudo dpkg --add-architecture i386

# init update
update
upgrade
clean

