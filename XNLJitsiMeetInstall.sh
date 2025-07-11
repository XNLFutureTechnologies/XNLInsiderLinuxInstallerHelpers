
#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies Jitsi Meet Installer Helper"
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
echo "This installer is intended to help them install the Jitsi Meet Client"
echo "using the flatpak system."
echo " "
echo "This script is intended for (AND ASSUMES) the use of Ubuntu/Kubuntu"
echo " "
echo "This script will try to automatically install the requirements and thus setup flatpak"
echo "IF needed, and then install Jitsi Meet for you ('our new Skype')"
echo " "
echo "================================================================================"
echo " "
read -p "Are you sure that you want to continue installing the Jitsi Meet Client [Y/N] " confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Installation Aborted!"
  exit 1
fi


sudo apt update
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.jitsi.jitsi-meet
nohup flatpak run org.jitsi.jitsi-meet >/dev/null 2>&1 &
disown
echo " "
echo "================================================================================"
echo "NOTE: It might be (depending on your Launcher) that Jitsi won't show up"
echo "in your Launcher ('formerly known as Start Menu' ;)) until you logout"
echo "and log back in again."
echo "================================================================================"
echo " "
