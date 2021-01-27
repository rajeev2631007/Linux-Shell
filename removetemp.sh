#!/bin/bash
rm -rf /usr/share/doc/*
rm -rf /usr/share/doc-base/*
rm -rf /var/tmp/*
rm -rf /var/log/installer/*
rm -rf /var/log/dmesg.*
rm -rf /var/cache/*
rm -rf /var/crash/*
rm -rf /var/spool/*
rm -rf /var/lib/apt/lists/*
rm -f /var/log/samba/log.wb-*
rm -rf /var/log/samba/log.winbindd.*
rm -rf /var/log/samba/log.nmbd.*.gz
rm -rf /var/log/samba/log.smbd.*.gz
mkdir /var/lib/apt/lists/partial
mv /usr/share/zoneinfo/Asia /opt/
rm -rf /usr/share/zoneinfo/*
mv /opt/Asia /usr/share/zoneinfo/
cat /dev/null > /var/mail/root
cat /dev/null > /var/lib/mlocate/mlocate.db
cat /dev/null > /var/log/samba/log.winbindd
cat /dev/null > /var/log/samba/log.winbindd-idmap
cat /dev/null > /var/log/udev
cat /dev/null > /var/log/bootstrap.log
cat /dev/null > /var/log/auth.log
cat /dev/null > /var/log/kern.log
cat /dev/null > /var/log/wtmp
cat /dev/null > /var/log/xferlog
cat /dev/null > /var/log/dmesg
cat /dev/null > /var/log/apache2/access.log
cat /dev/null > /var/log/apache2/error.log
cat /dev/null > /root/dead.letter

