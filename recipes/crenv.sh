#!/usr/bin/env bash
if [ -d ~/.crenv ]; then
  echo '########## crenv already installed, skipping.'
else
  echo "########## Installing crenv ..."
  git clone https://github.com/pine/crenv.git ~/.crenv
  pushd ~/.crenv/src/configure && make -C src && popd
  mkdir -p ~/.crenv/plugins
  pushd ~/.crenv/plugins
  git clone https://github.com/pine/crystal-build.git
  git clone https://github.com/crenv/crenv-update.git
fi
