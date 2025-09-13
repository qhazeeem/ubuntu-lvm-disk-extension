#!/bin/bash

# Disk Extension Script for Ubuntu LVM
# This script extends /dev/sda3 partition and ubuntu--vg-ubuntu--lv logical volume

set -e  # Exit on any error

echo "=== Disk Extension Script ==="
echo "Current disk layout:"
lsblk
echo ""
df -h
echo ""

# Backup current partition table
echo "Creating backup of partition table..."
sudo sfdisk -d /dev/sda > /tmp/sda_partition_backup_$(date +%Y%m%d_%H%M%S).txt
echo "Partition table backed up to /tmp/"

# Check if parted is installed
if ! command -v parted &> /dev/null; then
    echo "Installing parted..."
    sudo apt update && sudo apt install -y parted
fi

echo "Current partition table:"
sudo parted /dev/sda print

# Extend partition 3 to use all available space
echo "Extending partition 3 to use all available disk space..."
sudo parted /dev/sda --script resizepart 3 100%

echo "Partition extended. New layout:"
sudo parted /dev/sda print

# Inform kernel of partition table changes
echo "Informing kernel of partition changes..."
sudo partprobe /dev/sda

# Update physical volume to recognize new partition size
echo "Updating physical volume to recognize new size..."
sudo pvresize /dev/sda3

# Display physical volume info
echo "Physical volume info:"
sudo pvdisplay /dev/sda3

# Extend logical volume to use all free space
echo "Extending logical volume to use all available space..."
sudo lvextend -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv

# Resize the filesystem to use the extended logical volume
echo "Resizing filesystem..."
sudo resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv

echo ""
echo "=== Extension Complete ==="
echo "New disk layout:"
lsblk
echo ""
echo "New filesystem usage:"
df -h /

echo ""
echo "Extension completed successfully!"
echo "Your ubuntu--vg-ubuntu--lv logical volume has been extended to use all available disk space."
