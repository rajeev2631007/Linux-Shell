#!/bin/bash
sudo cp -p /etc/fstab /etc/fstab.bak
cd /mnt/ && sudo mkdir /mnt/windowsshare1
sudo echo "//172.168.1.3/user /mnt/windowsshare1 cifs credentials=/home/administrator/fstab/smbcredentials,iocharset=utf8,_netdev,auto,dir_mode=0777,file_mode=0777 0 0" | sudo tee -a /etc/fstab
cd /home/administrator && mkdir /home/administrator/fstab
sudo touch smbcredentials
sudo echo "username=" >> /home/administrator/fstab/smbcredentials
sudo echo "password=" >> /home/administrator/fstab/smbcredentials
sudo ln -s /mnt/windowsshare1 /home/administrator/Desktop/ZDrive

