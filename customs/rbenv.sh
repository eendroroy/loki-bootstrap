#!/usr/bin/env bash
if [ -d ~/.rbenv ]; then
  echo '########## rbenv already installed, skipping.'
else
  echo "########## Installing rbenv ..."
  sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev git
  git clone git://github.com/rbenv/rbenv.git ~/.rbenv
  pushd ~/.rbenv
  pushd src/configure && make -C src && popd
  popd
  mkdir -p ~/.rbenv/plugins
  pushd ~/.rbenv/plugins
  git clone git://github.com/rbenv/ruby-build.git
  git clone https://github.com/rbenv/rbenv-default-gems.git
  popd
  echo "bundler" | tee ~/.rbenv/default-gems
fi
