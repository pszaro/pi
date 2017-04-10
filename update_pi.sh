#/bin/sh
#
# Description: Script to update Raspberry Pi
#
# Comments:
#

echo "Cleaning up previously downloaded packages in /var/cache/apt/archives"
sudo apt-get -y clean

echo "Checking `uname -n` for updates..."
sudo apt-get -y update

echo "Upgrading `uname -n` installed packages to the latest levels..."
sudo apt-get -y dist-upgrade

# Creating file for future reference related to Ansible
touch /var/tmp/updatepi
