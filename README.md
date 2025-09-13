Ubuntu LVM Disk Extension Script
A bash script to safely extend Ubuntu LVM logical volumes to use all available disk space.
Overview
This script automates the process of extending a disk partition and LVM logical volume in Ubuntu systems. It's particularly useful when you've expanded a virtual machine's disk or added more physical storage and want to extend your root filesystem to use the additional space.

**Features**
✅ Non-interactive disk partition extension
✅ Automatic LVM physical volume resizing
✅ Logical volume extension to use all available space
✅ Filesystem resizing to match the extended volume
✅ Safety checks and partition table backup
✅ Progress monitoring and detailed output
✅ Error handling with automatic rollback on failure

**Prerequisites**
Ubuntu system with LVM setup
Root or sudo privileges
Additional unallocated disk space available

Compatibility
Tested on:

Ubuntu 20.04 LTS
Ubuntu 22.04 LTS
Ubuntu 24.04 LTS

**Usage**
Quick Start

Clone this repository:

git clone https://github.com/qhazeeem/ubuntu-lvm-disk-extension.git
cd ubuntu-lvm-disk-extension

Make the script executable:

chmod +x extend_disk.sh

Run the script:

sudo ./extend_disk.sh

**What the Script Does**

Backup: Creates a backup of your current partition table
Extend Partition: Extends the LVM partition to use all available disk space
Update Physical Volume: Resizes the LVM physical volume
Extend Logical Volume: Extends the logical volume to use all free space
Resize Filesystem: Expands the filesystem to match the new volume size

**Safety Features**
Automatic Backup: Partition table is automatically backed up before any changes
Error Handling: Script exits safely if any step fails
Kernel Notification: Ensures the kernel is aware of partition changes
Verification: Shows before and after disk layouts

**Troubleshooting**
Common Issues
Script fails with "No space left on device"

Ensure you have actual unallocated space on your disk
Check with lsblk and df -h

Permission denied errors

Run the script with sudo
Ensure your user has sudo privileges

Partition already at maximum size

Verify you've actually expanded the underlying disk/VM
Use fdisk -l /dev/sda to check total disk size

Getting Help
If you encounter issues:

Check the backup files in /tmp/ for partition table backups
Review the script output for specific error messages
Open an issue with your system details and error output

Contributing
Contributions are welcome! Please feel free to submit a Pull Request.
Development

Fork the repository
Create a feature branch (git checkout -b feature/amazing-feature)
Commit your changes (git commit -m 'Add amazing feature')
Push to the branch (git push origin feature/amazing-feature)
Open a Pull Request

License
This project is licensed under the MIT License - see the LICENSE file for details.
Disclaimer
⚠️ Important: This script modifies disk partitions and filesystems. While it includes safety measures, always backup important data before running disk modification tools.
Changelog
v1.0.0

Initial release
Basic LVM extension functionality
Safety checks and backups
Error handling


## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guidelines](CONTRIBUTING.md) before submitting a pull request.

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⚠️ Disclaimer

This tool is for educational and ethical testing purposes only. Always obtain proper authorization before scanning any systems you don't own or have explicit permission to test.

## 👥 Author

- [@qhazeem](https://github.com/qhazeem)

## 🌟 Show your support


Give a ⭐️ if this project helped you!
