#!/usr/bin/env bash
if [ -d ~/.pyenv ]; then
  echo '########## pyenv already installed, skipping.'
else
  echo "########## Installing pyenv ..."
  sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
  git clone https://github.com/yyuu/pyenv.git ~/.pyenv
fi
