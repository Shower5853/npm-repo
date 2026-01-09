wget -O /tmp/wefetch_package_npm https://raw.githubusercontent.com/Shower5853/npm-repo/refs/heads/main/wefetch/wefetch
sleep 1
mv /tmp/wefetch_package_npm /usr/bin/wefetch
wget -O /tmp/npm-repo.zip https://github.com/Shower5853/npm-repo/archive/refs/heads/main.zip
unzip /tmp/npm-repo
mkdir "${XDG_CONFIG_HOME}/wefetch"
mv /tmp/npm-repo-main/wefetch/logos "${XDG_CONFIG_HOME}/wefetch/"
rm -rf /tmp/npm-repo.zip /tmp/npm-repo-main
echo "Wefetch has been succesfully installed!"
