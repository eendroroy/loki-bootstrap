#/usr/bin/env bash
if [ -d ~/.nenv ]; then
  echo '########## rbenv already installed, skipping.'
else
  sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
  git clone https://github.com/ryuone/nenv.git ~/.nenv
fi
