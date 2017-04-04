#/bin/sh
#
# Description: Initial Script executed when new Raspberry Pi comes online
#
# Comments:
#

echo "Doing Debian Updates (slow) ..."
sudo aptitude -y update
sudo aptitude -y upgrade
sudo aptitude -y dist-upgrade
sudo aptitude -y autoclean
sudo aptitude -y full-upgrade

#speed up boot
setupcon --force

# USB TTY
/sbin/getty -L ttyUSB0 115200 vt100 &

# Bluetooth Scan
hcitool scan

# setup .ssh dir for key dump
[ ! -d .sshi ] && mkdir .ssh
cd .ssh
touch authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

echo "Doing Debian Updates (slow) ..."
sudo aptitude -y update
sudo aptitude -y upgrade
sudo aptitude -y dist-upgrade
sudo aptitude -y autoclean
sudo aptitude -y full-upgrade

# Creating file for future reference related to Ansible
touch /var/tmp/piimage
