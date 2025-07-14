 
#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies NVIDIA Driver Installer Helper"
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
echo "This installer is intended to help them install the official NVIDIA drivers"
echo "from the website so that they can for example use Steam + Proton etc without"
echo "any (of the common) issues."
echo " "
echo "This script is intended for (AND ASSUMES) the use of Ubuntu/Kubuntu while using X11"
echo "Tested on Ubuntu/Kubuntu 24.04LTS"
echo " "
echo "This script will try to automatically install the requirements so you can also"
echo "automatically install the 32 bit drivers for your NVIDIA videocard (which is"
echo "currently required to run steam+proton properly)"
echo " "
echo "IMPORTANT: Make sure that you DO NOT use the snap package of steam but that"
echo "install the normal/regular version!"
echo " "
echo "WARNING: This installer does NOT seem to work properly with RTX 5000 Series cards!"
echo "We are using is for GTX 970 Cards and a few slightly newer cards without any issues"
echo "but please keep in mind that it will NOT work properly for the RTX 5070 for example!"
echo "This is however due to issues with the official NVIDIA driver, so this might be resolved"
echo "in the future. Please do some research before installing!"
echo " "
echo "================================================================================"
echo " "
read -p "Are you sure that you want to continue installing the NVIDIA driver? [Y/N] " confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Installation Aborted!"
  exit 1
fi


# Check if running under X11 (Remove this block if future drivers DO work correctly on wayland)
if [ "$XDG_SESSION_TYPE" != "x11" ]; then
  echo "Like mentioned earlier, this script will only resume when running on X11 (NOT on Wayland)!"
  echo "I BRIEFLY tested this method on Wayland on Kubuntu 25.04, and well... let me put it this way:"
  echo "It did NOT go well ;)"
  echo " "
  echo "IF the drivers in the future are updated to work properly on Wayland, then you can remove this"
  echo "block from the script. For now I will just block installs to prevent issues caused by my script"
  exit 1
fi
# End of block to remove to disable X11 detection

DetectedInstallers=($(ls NVIDIA-Linux-x86_64-*.run 2>/dev/null))


# Check how many were found
if [ ${#DetectedInstallers[@]} -eq 0 ]; then
  echo "ERROR: No NVIDIA Installer (.run file) found in the current directory."
  echo "Download the correct Linux 64bit driver for your videocard here: https://www.nvidia.com/en-in/drivers/"
  exit 1
elif [ ${#DetectedInstallers[@]} -gt 1 ]; then
  echo "ERROR: Multiple NVIDIA .run files found:"
  printf ' - %s\n' "${DetectedInstallers[@]}"
  echo "Please make sure that there is only ONE NVIDIA installer in the folder of this script!"
  exit 1
fi

installer="${DetectedInstallers[0]}"
echo "Found installer: $installer"

sudo apt update
sudo apt install -y build-essential dkms libglvnd-dev pkg-config lib32gcc-s1 lib32stdc++6 libc6-i386 libgl1:i386 libnvidia-gl-570:i386 linux-headers-$(uname -r)
sudo mkdir -p /usr/lib32

sudo chmod +x "$installer"
sudo ./"$installer" --compat32-libdir=/usr/lib32
