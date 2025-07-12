
#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies Virtual Machine Setup"
echo "https://www.teamxnl.com/ "
echo "https://www.youtube.com/@XNLFutureTechnologies"
echo "================================================================================"
echo "NOTE: This installer helper is officially intended for some of my friends "
echo "who are just starting with Linux for the very first time but I decided to also"
echo "share them publicly in case they might benefit someone else."
echo " "
echo "HOWEVER:"
echo "I give ABSOLUTELY NO WARRANTY that this will also work for your system and"
echo "neither do I accept ANY liability if something goes wrong on your system."
echo "AKA: Use at your own risk!"
echo " "
echo "This installer is intended to help them install the Virtual Machine System"
echo "so they can run those rare applications which do NOT run under Wine, Proton etc etc."
echo " "
echo "This script is intended for (AND ASSUMES) the use of Ubuntu/Kubuntu"
echo " "
echo "This script will try to automatically install the requirements and setup the"
echo "user group access."
echo " "
echo "IMPORTANT: Make sure that for optimal performance you've enabled VT-x/AMD-V"
echo "in your BIOS/UEFI!"
echo "================================================================================"
echo " "
read -p "Are you sure that you want to continue installing the Virtual Machine Setup [Y/N] " confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Installation Aborted!"
  exit 1
fi


sudo apt update

# Install KVM, libvirt, bridge utilities, and Virt-Manager GUI
sudo apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

# Add user to the libvirt group for permissions
sudo usermod -aG libvirt $USER

# Activate group changes (log out and in (RECOMMENDED!, or use newgrp)
newgrp libvirt

# [OPTIONAL] Checking if virtualization is supported and KVM is running
#egrep -c '(vmx|svm)' /proc/cpuinfo   # Should return >0
#systemctl status libvirtd
echo "================================================================================"
echo "Virtual Machine Setup Completed, you can now start the Virtual Machine manager"
echo "either by typing virt-manager or by starting Virtual Machine Manager from"
echo "your launcher (or 'Start Menu' as you formerly called it ;))"
echo "================================================================================"
