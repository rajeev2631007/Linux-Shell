#!/bin/bash -x
trap ' ' 2
while true
do
clear
	echo "========================================================"
	echo "           After Installation Steps                     "
	echo "########################################################"  
	echo "1. Install Remmina 1.2.0 (Internet Connection Require)  "
	echo "2. Remove Libra office 4 and Install LibreOffice_5.0.3.2"
	echo "3. Install Microsoft fonts                              "
	echo "4. Setup Shortcut Keys (xbindkeys.conf)                 "
	echo "5. Wallpaper                                            "
	echo "6. Configure FSTAB for Z Drive                          "  
	echo "q. Quit                                                 "
	echo "########################################################"  
	echo -e "\n"
	echo -e "Enter Your Selections \c"
	read answer
	case "$answer" in
1)sudo apt-get remove -y remmina remmina-plugin-rdp libfreerdp-plugins-standard 
 sudo apt-get purge -y remmina remmina-plugin-rdp libfreerdp-plugins-standard
 sudo apt-add-repository ppa:remmina-ppa-team/remmina-next -y
 sudo apt-get update -y
 sudo apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard -y ;;
	2)cd LibreOffice_5.0.3.2
sudo apt-get remove --purge libreoffice* -y
	  sudo apt-get clean -y
	  sudo apt-get autoremove -y
	  sudo dpkg --configure -a
 	sudo dpkg -i *.deb;;
	3)#cd /home/administrator 
          sudo mkdir -p /home/administrator/.fonts 
	  sudo chmod 777 /home/administrator/.fonts 
	  cd Fonts
	  sudo cp -pv * /home/administrator/.fonts;;
	4)sudo cp -pv xbindkeys.conf /home/administrator/.config/peppermint-control-center;;
	5)sudo pwd
	cd Wallpaper
	  sudo cp -pv * /home/administrator/Pictures;;
	6)sudo cp -p /etc/fstab /etc/fstab.bak
   	  cd /mnt/ && sudo mkdir /mnt/windowsshare1
	sudo echo "//172.168.1.3/user /mnt/windowsshare1 cifs credentials=/home/administrator/fstab/smbcredentials,iocharset=utf8,_netdev,auto,dir_mode=0777,file_mode=0777 0 0" | sudo tee -a /etc/fstab
	cd /home/administrator && mkdir /home/administrator/fstab
	sudo touch smbcredentials
	sudo echo "username=" >> /home/administrator/fstab/smbcredentials
	sudo echo "password=" >> /home/administrator/fstab/smbcredentials
	sudo ln -s /mnt/windowsshare1 /home/administrator/Desktop/ZDrive;;
	q)exit;;
esac
	echo -e "Enter Return to Continue \c"
	read input
done
  
