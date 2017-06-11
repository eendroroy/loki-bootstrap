#!/usr/bin/env bash
if [ -d ~/.goenv ]; then
  echo '########## goenv already installed, skipping.'
else
  echo "########## Installing goenv ..."
  git clone https://github.com/syndbg/goenv.git ~/.goenv
fi
