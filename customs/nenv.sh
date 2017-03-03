#/usr/bin/env bash
if [ -d ~/.nenv ]; then
  echo '########## nenv already installed, skipping.'
else
  echo "########## Installing nenv ..."
  sudo apt-get install -y --force-yes libssl-dev libreadline-dev zlib1g-dev git
  git clone https://github.com/ryuone/nenv.git ~/.nenv
fi
