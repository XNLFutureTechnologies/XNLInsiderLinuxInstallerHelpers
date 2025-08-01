#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies iPhone Unmounting Helper"
echo "https://www.teamxnl.com/ "
echo "https://www.youtube.com/@XNLFutureTechnologies"
echo "================================================================================"
echo " "
read -p "Do you want to resume disconnecting from (your) iPhone?" confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Disconnection Aborted.."
  exit 1
fi

echo "Finishing writes, please wait..."
sync


# Unmounting the iPhone
if fusermount -u ~/XNLiPhone/iPhoneMount; then
    echo "You can now safely disconnect your iPhone..."
else
    echo "Failed to unmount iPhone. Make sure it's not in use." >&2
    exit 1
fi
