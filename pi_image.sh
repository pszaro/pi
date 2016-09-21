echo "Doing Debian Updates (slow) ..."
sudo aptitude -y update
sudo aptitude -y upgrade
sudo aptitude -y dist-upgrade
sudo aptitude -y autoclean
sudo aptitude -y full-upgrade

echo "Installing Raspberry Pi Packages"
sudo aptitude -y libraspberrypi-bin libraspberrypi0 raspberrypi-bootloader libraspberrypi-doc libraspberrypi-dev

echo "Installing Base Packages"
sudo aptitude -y install libgl1-mesa-dri libparse-debianchangelog-perl uuid-runtime xfonts-base gnupg-curl oss-compat upower libreadline5 sysv-rc-conf sysstat

echo "Installing Multimedia Packages"
#sudo aptitude -y install xrdp ffmpeg pulseaudio-esound-compat moc

echo "Installing Productivity Packages"
sudo aptitude -y install chromium-browser 

echo "Installing USB WLAN Firmware"
sudo aptitude -y install zd1211-firmware firmware-ralink firmware-realtek

echo "Installing Web Servers"
sudo aptitude -y install apache2 

echo "Installing Standard Tools"
sudo aptitude -y install dnsutils whois

echo "Installing Development Environment"
sudo aptitude -y install vim git git-all 

echo "Doing Debian Updates (slow) ..."
sudo aptitude -y update
sudo aptitude -y upgrade
sudo aptitude -y dist-upgrade
sudo aptitude -y autoclean
sudo aptitude -y full-upgrade
