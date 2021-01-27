#!/bin/bash

sudo apt-get remove remmina remmina-plugin-rdp libfreerdp-plugins-standard
sudo apt-get purge remmina remmina-plugin-rdp libfreerdp-plugins-standard
sudo apt-add-repository ppa:remmina-ppa-team/remmina-next
sudo apt-get update
sudo apt-get install remmina remmina-plugin-rdp libfreerdp-plugins-standard
