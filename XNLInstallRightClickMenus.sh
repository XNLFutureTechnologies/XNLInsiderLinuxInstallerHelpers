
#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies Right Click Menu's Install Helper"
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
echo "This installer will install the XNL Ft. Right-Click-Menus."
echo "These are intended to be used with Wine and will for example make it a bit"
echo "easier for beginners to create launchers (aka shortcuts) "
echo " "
echo "This script is intended for (AND ASSUMES) the use of Ubuntu/Kubuntu"
echo " "
echo "================================================================================"
echo " "
read -p "Are you sure that you want to continue installing the XNL Ft. Right-Click-Menus? [Y/N] " confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Installation Aborted!"
  exit 1
fi


# Sudo not really needed here though, but it will require the user to entier the password and thus
# basically requiring an extra layer of confirmation
sudo cp -r RightClickMenu/kservices5 ~/.local/share/

echo " "
echo "================================================================================"
echo "Completed."
echo "If you have file managers (like Dolphin for example) open, it MIGHT be required"
echo "to close them before the menu's show up."
echo "================================================================================"
echo " "



