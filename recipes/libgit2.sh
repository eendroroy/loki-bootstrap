#!/usr/bin/env bash

cd /tmp
rm -rf libgit2
git clone git@github.com:libgit2/libgit2.git
cd libgit2
git checkout v0.26.0
mkdir build && cd build
cmake ..
sudo cmake --build . --clean-first --target install
sudo ldconfig

