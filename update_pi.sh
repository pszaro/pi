#/bin/sh
#
# Description: Script to update Raspberry Pi 
#
# Comments:
#

echo "Cleaning up previously downloaded packages in /var/cache/apt/archives"
sudo apt-get clean

echo "Checking `uname -n` for updates..."
sudo apt-get update

echo "Upgrading `uname -n` installed packages to the latest levels..."
sudo apt-get dist-upgrade

# Creating file for future reference related to Ansible
touch /tmp/updatepi
