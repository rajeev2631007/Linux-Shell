#!/bin/bash -x
function subopt1
{ clear
   subopt1=""
   while [ "$subopt1" != "8" ]
   do
# clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Mahajan Overseas Pvt. Ltd."
tput sgr0
 
tput cup 5 15
# Set reverse video mode
#tput rev
echo "System Update and Software"
tput cup 6 17
tput rev
echo "S U B - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. System update"
 
tput cup 8 15
echo "2. System upgrade"
 
tput cup 9 15
echo "3. Distro update"
 
tput cup 10 15
echo "4. Compliete update"

tput cup 11 15
echo "5. Install Specifice Software"

tput cup 12 15
echo "6. Install Basic Software" 

tput cup 13 15
echo "7. Return to Main" 

tput cup 14 15
echo "8. Exit"  

# Set bold mode 
tput bold
tput cup 16 15
read -p "Enter your choice [1-8] " opt
tput clear
tput sgr0
tput rc
        #read -p "Selection: " opt
        if [ "$opt" = "1" ]; then
             subopt1
        elif [ "$opt" = "2" ]; then
             subopt2
        elif [ "$opt" = "3" ];then
             subopt3
 	elif [ "$opt" = "4" ];then
             subopt4
 	elif [ "$opt" = "5" ];then
             subopt5
 	elif [ "$opt" = "6" ];then
             mainopt
	elif [ "$opt" = "7" ];then
             mainopt
	elif [ "$opt" = "8" ];then
             exit
        fi
   done
 }

 function subopt2
 { clear
     subopt2=""
     while [ "$subopt2" != "11" ]
     do
       # clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Mahajan Overseas Pvt. Ltd."
tput sgr0
 
tput cup 5 15
# Set reverse video mode
#tput rev
echo "Post Installation Changes"
tput cup 6 17
tput rev
echo "S U B - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. Modify and Update IP Address"
 
tput cup 8 15
echo "2. Modify and Update Host Name"
 
tput cup 9 15
echo "3. Modify and Update DNS Server Setting in Resolv"
 
tput cup 10 15
echo "4. Show FSTAB Details"

tput cup 11 15
echo "5. Insert Windows Share Details in FSTAB file"

tput cup 12 15
echo "6. Create FSTAB Folder in Adminstrator Home" 

tput cup 13 15
echo "7. Create Samcredinatalfile in Adminstrator Fstab Folder" 

tput cup 14 15
echo "8. Create Windowsshare1 folder in /mnt"  

tput cup 15 15
echo "9. Compliete FSTAB Process" 

tput cup 16 15
echo "10. Return to Main" 

tput cup 17 15
echo "11. Exit"     

# Set bold mode 
tput bold
tput cup 18 15
read -p "Enter your choice [1-11] " opt
if [ "$opt" = "1" ]; then
             subopt1
        elif [ "$opt" = "2" ]; then
             subopt2
        elif [ "$opt" = "3" ];then
             subopt3
 	elif [ "$opt" = "4" ];then
		clear             
		sudo x-terminal-emulator -e "bash -c \"cat /etc/fstab; exec bash \""

	elif [ "$opt" = "5" ];then
             sudo echo "//172.168.1.3/user /mnt/windowsshare1 cifs credentials=/home/administrator/fstab/smbcredentials,iocharset=utf8,_netdev,auto,dir_mode=0777,file_mode=0777 0 0" | sudo tee -a /etc/fstab
cd /home/administrator && mkdir /home/administrator/fstab;
 	elif [ "$opt" = "6" ];then
             cd /home/administrator && mkdir /home/administrator/fstab 
	elif [ "$opt" = "7" ];then
          sudo x-terminal-emulator -e "bash -c \"cd /home/administrator/fstab; cd /home/administrator/fstab;touch /home/administrator/smbcredentials; exec bash \""
x-terminal-emulator -e "bash -c \"read username password && sudo chmod 777 /home/administrator/fstab/smbcredentials && sudo echo "username = $username " >> /home/administrator/fstab/smbcredentials && sudo echo "password = ${password} " >> /home/administrator/fstab/smbcredentials; exec bash \""
	elif [ "$opt" = "8" ];then
             exit
	elif [ "$opt" = "9" ];then
             exit
	elif [ "$opt" = "10" ];then
             mainopt
	elif [ "$opt" = "11" ];then
             exit
        fi


tput clear
tput sgr0
tput rc
        #read -p "Selection: " opt
        
   done
 }

 function subopt3
 { clear
     subopt2=""
     while [ "$subopt3" != "6" ]
     do
             # clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Mahajan Overseas Pvt. Ltd."
tput sgr0
 
tput cup 5 15
# Set reverse video mode
#tput rev
echo "System Infomation and Detail"
tput cup 6 17
tput rev
echo "S U B - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. Show System Details"
 
tput cup 8 15
echo "2. Show System Summary"
 
tput cup 9 15
echo "3. Show Disk Details"
 
tput cup 10 15
echo "4. Show Mount Drives"

tput cup 11 15
echo "5. Back to Main"

tput cup 12 15
echo "6. Exit" 

# Set bold mode 
tput bold
tput cup 13 15
#read -p "Enter your choice [1-6] " opt
tput clear
tput sgr0
tput rc
        read -p "Selection: " opt
        if [ "$opt" = "1" ]; then
             subopt1
        elif [ "$opt" = "2" ]; then
             subopt2
        elif [ "$opt" = "3" ];then
             subopt3
 	elif [ "$opt" = "4" ];then
             subopt4
 	elif [ "$opt" = "5" ];then
             mainopt
 	elif [ "$opt" = "6" ];then
             exit
        fi
   done
 }
 function subopt4
 { clear
     subopt2=""
     while [ "$subopt2" != "8" ]
     do
       # clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Mahajan Overseas Pvt. Ltd."
tput sgr0
 
tput cup 5 15
# Set reverse video mode
#tput rev
echo "User and Group and Permission"
tput cup 6 17
tput rev
echo "S U B - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. Create single user"
 
tput cup 8 15
echo "2. Create multiple user and group using csv"
 
tput cup 9 15
echo "3. Add Multiple users into Group"
 
tput cup 10 15
echo "4. Change ownship of file and folder"

tput cup 11 15
echo "5. Make Changes in sudoer file"

tput cup 12 15
echo "6. Reset Password" 

tput cup 13 15
echo "7. Back to Main" 

tput cup 14 15
echo "8. Exit"  

# Set bold mode 
tput bold
tput cup 15 15
read -p "Enter your choice [1-8] " choice
tput clear
tput sgr0
tput rc
        read -p "Selection: " opt
        if [ "$opt" = "1" ]; then
             subopt1
        elif [ "$opt" = "2" ]; then
             subopt2
        elif [ "$opt" = "3" ];then
             subopt3
 	elif [ "$opt" = "4" ];then
             subopt4
 	elif [ "$opt" = "5" ];then
             subopt5
 	elif [ "$opt" = "6" ];then
             mainopt
	elif [ "$opt" = "7" ];then
             mainopt
	elif [ "$opt" = "8" ];then
             exit
        fi
   done
 }
 function subopt5
 { clear
     subopt2=""
     while [ "$subopt2" != "10" ]
     do
       # clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Mahajan Overseas Pvt. Ltd."
tput sgr0
 
tput cup 5 15
# Set reverse video mode
#tput rev
echo "Diagnose and Log"
tput cup 6 17
tput rev
echo "S U B - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. Show Running Services"
 
tput cup 8 15
echo "2. Show System log"
 
tput cup 9 15
echo "3. Show Device log"
 
tput cup 10 15
echo "4. Show Samba log"

tput cup 11 15
echo "5. Show lsusb"

tput cup 12 15
echo "6. Show lsmod" 

tput cup 13 15
echo "7. Show dmseg" 

tput cup 14 15
echo "8. Show scan -L"  

tput cup 15 15
echo "9 Return to Main" 

tput cup 16 15
echo "10 Exit" 

 

# Set bold mode 
tput bold
tput cup 17 15
read -p "Enter your choice [1-10] " choice
tput clear
tput sgr0
tput rc
        read -p "Selection: " opt
        if [ "$opt" = "1" ]; then
             subopt1
        elif [ "$opt" = "2" ]; then
             subopt2
        elif [ "$opt" = "3" ];then
             subopt3
 	elif [ "$opt" = "4" ];then
             subopt4
 	elif [ "$opt" = "5" ];then
             subopt5
 	elif [ "$opt" = "6" ];then
             mainopt
	elif [ "$opt" = "7" ];then
             mainopt
	elif [ "$opt" = "8" ];then
             exit
	elif [ "$opt" = "9" ];then
              mainopt
	elif [ "$opt" = "10" ];then
            exit
        fi
   done
 }
 function mainopt
 {  clear
    opt=""
    while [ "$opt" != "6" ]
    do
 
# clear the screen
tput clear
 
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
 
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Mahajan Overseas Pvt. Ltd."
tput sgr0
 
tput cup 5 17
# Set reverse video mode
tput rev
echo "M A I N - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. System Update and Software"
 
tput cup 8 15
echo "2. Post Installation Changes"
 
tput cup 9 15
echo "3. System and Logs"
 
tput cup 10 15
echo "4. User and Group and Permission"

tput cup 11 15
echo "5. Diagnose and Log"

tput cup 12 15
echo "6. Exit" 
 
# Set bold mode 
tput bold
tput cup 13 15
read -p "Enter your choice [1-6] " opt
tput clear
tput sgr0
tput rc
#        read -p "Selection: " opt
        if [ "$opt" = "1" ]; then
             subopt1
        elif [ "$opt" = "2" ]; then
             subopt2
        elif [ "$opt" = "3" ];then
             subopt3
 	elif [ "$opt" = "4" ];then
             subopt4
 	elif [ "$opt" = "5" ];then
             subopt5
 	elif [ "$opt" = "6" ];then
             exit
        fi
   done
}

mainopt
