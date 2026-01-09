#!/bin/bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

wget -O /tmp/wefetch_package_npm https://raw.githubusercontent.com/Shower5853/npm-repo/refs/heads/main/wefetch/wefetch >/dev/null 2>&1
echo "Binary file downloaded!"

sleep 1

sudo mv /tmp/wefetch_package_npm /usr/bin/wefetch
echo "Binary file moved to /usr/bin/wefetch"

sudo chmod +x /usr/bin/wefetch
echo "chmod +x"

wget -O /tmp/wefetch_logos.zip https://raw.githubusercontent.com/Shower5853/npm-repo/refs/heads/main/wefetch/logos.zip >/dev/null 2>&1
echo "Downloaded logos archive"

mkdir -p "${XDG_CONFIG_HOME}/wefetch/"
echo "Created ~/.config/wefetch/"

mv /tmp/wefetch_logos.zip "${XDG_CONFIG_HOME}/wefetch/"
echo "Logos archive moved to ~/.config/wefetch/"

unzip "${XDG_CONFIG_HOME}/wefetch/logos.zip"
echo "Unzipped logos"

rm -rf "${XDG_CONFIG_HOME}/wefetch/logos.zip"
echo "Deleted logos archive"

echo

echo "Wefetch has been succesfully installed!"
