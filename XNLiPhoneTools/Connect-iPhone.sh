#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies iPhone Mounting Helper"
echo "https://www.teamxnl.com/ "
echo "https://www.youtube.com/@XNLFutureTechnologies"
echo "================================================================================"
echo " Make sure that your iPhone is connected AND UNLOCKED before proceeding to ensure"
echo " that connecting succeeds"
echo "================================================================================"
echo " "
read -p "Do you want to resume connecting with (your) iPhone?" confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Connection Aborted.."
  exit 1
fi

# Just in case it got removed, we're re-creating the mount point (if it exists, nothing happens though)
mkdir -p ~/XNLiPhone/iPhoneMount/

# Pairing the iPhone
ifuse ~/XNLiPhone/iPhoneMount

# Open Dolphin and 'release' it from the terminal
nohup dolphin ~/XNLiPhone/iPhoneMount >/dev/null 2>&1 &

echo "================================================================================"
echo "Use ./Disconnect to properly unmount the iPhone afterwards! "
echo "================================================================================"
