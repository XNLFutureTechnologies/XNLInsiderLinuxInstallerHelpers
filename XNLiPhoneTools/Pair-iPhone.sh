#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies iPhone Pairing Helper"
echo "https://www.teamxnl.com/ "
echo "https://www.youtube.com/@XNLFutureTechnologies"
echo "================================================================================"
echo " Make sure that your iPhone is connected AND UNLOCKED before proceeding to ensure"
echo " that the pairing process succeeds"
echo "================================================================================"
echo " "
read -p "Do you want to resume pairing with (your) iPhone?" confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Pairing Aborted.."
  exit 1
fi

# Pairing the iPhone
idevicepair pair
