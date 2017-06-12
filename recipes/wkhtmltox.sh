#!/usr/bin/env bash

cd /tmp
latest_series=`curl https://downloads.wkhtmltopdf.org/ | grep "^<a" | sed 's|"| |g' | awk '{print $3}' | head -1`
releases=`curl https://downloads.wkhtmltopdf.org/${latest_series} | grep "^<a" | sed 's|"| |g' | awk '{print $3}'`

echo "Available Releases: -"
latest=""
for rel in $releases; do
    echo "==> ${rel}" | tr -d "/"
    latest=`echo "${rel}" | tr -d " /"`
done
echo "Installing latest release => ${latest} <="

sudo apt-get install -y libfontconfig libxrender1

wget https://downloads.wkhtmltopdf.org/${latest_series}${latest}/wkhtmltox-${latest}_linux-generic-amd64.tar.xz
tar xf wkhtmltox-${latest}_linux-generic-amd64.tar.xz
sudo mv wkhtmltox /usr/local/share/
sudo update-alternatives --install /usr/local/bin/wkhtmltopdf wkhtmltopdf /usr/local/share/wkhtmltox/bin/wkhtmltopdf 1005

wkhtmltopdf --version

sudo update-alternatives --install /usr/local/bin/wkhtmltoimage wkhtmltoimage /usr/local/share/wkhtmltox/bin/wkhtmltoimage 1005

wkhtmltoimage --version
