#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies iPhone Installer Helper"
echo "https://www.teamxnl.com/ "
echo "https://www.youtube.com/@XNLFutureTechnologies"
echo "================================================================================"
echo "NOTE: This installer helper is officially intended for some of my friends "
echo "who are just starting with Linux for the very first time but I decided to also"
echo "share them publicly in case they might benefit someone else."
echo " "
echo "These tools are required to be able to copy files (photos/videos) from your iPhone"
echo "with Linux. NO WORRIES, it won't install massive junk packages like iTunes or"
echo "anything like that, no Apple software running in the background like on windows etc."
echo " "
echo "These are just a couple small utils (which I did NOT made btw, no credit taken here!), "
echo "which will enable you to pair with and connect to your iPhone without too much hassle."
echo " "
echo "Note: These extra steps required are NOT due to Linux btw, but due to how Apple"
echo "integrated certain things."
echo " "
echo "This script will install some runtimes and then install the XNL Iphone Helper"
echo "scripts in your home directory in the folder XNLiPhone"
echo " "
echo "This script is intended for (AND ASSUMES) the use of Ubuntu/Kubuntu"
echo " "
echo "================================================================================"
echo " "
read -p "Are you sure that you want to continue installing the XNL Ft. iPhone Helpers?" confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Installation Aborted!"
  exit 1
fi

# Installing the required tools (KDE Safe, no GNOME tools will be installed)
sudo apt -y install ifuse libimobiledevice6 libimobiledevice-utils usbmuxd

# Making the Main folder
mkdir ~/XNLiPhone

# Making the folder which will be used for the actual mounting
mkdir ~/XNLiPhone/iPhoneMount


# Copying the helper scripts to the home folder
cp XNLiPhoneTools/*.sh ~/XNLiPhone/

# Ensuring the scripts are executable
chmod +x ~/XNLiPhone/*.sh
echo "================================================================================"
echo " From the XNLiPhone directory inside your home folder: $HOME/XNLiPhone"
echo " you can use the following commands to use your iPhone on Linux:"
echo " ./Pair-iPhone        - To pair the iPhone so it will actually allow connections with your PC"
echo " ./Connect-iPhone     - To connect to and mount your iPhone with your PC"
echo " ./Disconnect-iPhone  - To disconnect (and unmount) your iPhone from your PC again"
echo ""
echo " NOTES:"
echo " 1. When your iPhone is mounted my script will automatically open Dolphin in the"
echo " mounted folder which contains all the (accessible) data of your iPhone."
echo ""
echo " 2. Make sure to ALWAYS use the Disconnect-iPhone script when you're done copying"
echo " your photos, videos or other files, to ensure that all read/write operations are"
echo " properly terminated and that the iPhone is properly unmounted!"
echo "================================================================================"



