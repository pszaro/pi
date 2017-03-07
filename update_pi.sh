echo "Cleaning up previously downloaded packages in /var/cache/apt/archives"
sudo apt-get clean

echo "Checking `uname -n` for updates..."
sudo apt-get update

echo "Upgrading `uname -n` installed packages to the latest levels..."
sudo apt-get dist-upgrade
