#!/bin/bash

# Define the variables
server="192.168.1.10"
share="shared_folder"
mount_point="/mnt/shared_folder"

# Check if the mount point exists
if [ ! -d "$mount_point" ]; then
  echo "Creating mount point '$mount_point'..."
  sudo mkdir "$mount_point"
fi

# Mount the shared drive
sudo mount -t cifs //$server/$share $mount_point

# Display a message
echo "The shared drive has been mounted to $mount_point."
