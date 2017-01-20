#!/usr/bin/env bash
if [ -d ~/.pyenv ]; then
  echo '########## pyenv already installed, skipping.'
else
  echo "########## Installing pyenv ..."
  sudo apt-get install -y --force-yes libssl-dev libreadline-dev zlib1g-dev git
  sudo apt-get install -y --force-yes build-essential checkinstall
  sudo apt-get install -y --force-yes libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
  git clone https://github.com/yyuu/pyenv.git ~/.pyenv
fi
