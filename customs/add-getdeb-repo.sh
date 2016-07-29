if [[ -f /etc/apt/sources.list.d/getdeb.list ]]; then
  echo "########## getded pa already added. Skipping ..."
else
  echo "########## Adding getdeb ppa ..."
  sudo cp sources.list/getdeb.list.xenial /etc/apt/sources.list.d/getdeb.list
  sudo apt-get update -y --force-yes
fi
