#!/usr/bin/env bash
cd /tmp || exit
echo "########## Downloading Postman ..."
wget https://dl.pstmn.io/download/latest/linux?arch=64 -O postman.tar.gz
tar -xzf postman.tar.gz
rm postman.tar.gz

echo "########## Installing/Updating Postman ..."
if [ -d "/opt/Postman" ];then
    echo "      ---> Removing previous installation @/opt/Postman ..."
    sudo rm -rf /opt/Postman
fi
sudo mv Postman /opt/Postman
sudo chown ${USER}:${USER} /opt/Postman -R
if [ -L "/usr/bin/postman" ];then
    sudo rm -f /usr/bin/postman
fi
sudo ln -s /opt/Postman/Postman /usr/bin/postman

echo "########## Creating desktop entry ..."

echo "[Desktop Entry]
Type=Application
Version=1.0
Name=Postman
Comment=Supercharge your API workflow
Exec="/opt/Postman/app/Postman"
Icon=/opt/Postman/app/resources/app/assets/icon.png" | tee ~/.local/share/applications/Postman.desktop
