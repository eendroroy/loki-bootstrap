#/usr/bin/env bash
if [ -d ~/.nodenv ]; then
  echo '########## nodenv already installed, skipping.'
else
  echo "########## Installing node ..."
  sudo apt-get install -y --force-yes libssl-dev libreadline-dev zlib1g-dev git
  git clone https://github.com/nodenv/nodenv.git ~/.nodenv
  cd ~/.nodenv && src/configure && make -C src
  mkdir -p ~/.nodenv/plugins/
  git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
fi
