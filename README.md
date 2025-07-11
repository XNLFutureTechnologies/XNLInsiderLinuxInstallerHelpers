# XNL (Insider) Linux Installer Helpers
These are just a couple of installation helper scripts for a couple of our insider members, team members and even a couple of (private) friends who have recently switched to Linux for the first time.
  
These scripts are mainly intended for our OWN INTERNAL use, but I decided to make them public just in case others might find them usefull. 
  
HOWEVER: Keep in mind that I do NOT give ANY support/help for/about these scripts, that using them is 100% at your own responsibility, and that they **might NOT be compatible for your system!**  
  
AGAIN: These are mainly intended for our own use, and these (currently) assume the following system configuration:  
Operating System: **Ubuntu/Kubuntu 24.04 LTS** (x64/64Bit)  
Desktop Environment: **KDE**  
Display System: **X11** (For most this does not matter, for the driver(s) it DOES though!)  

# No Pull Requests, Tickets Etc supported
Due to these being of a more 'personal'/'inside' nature, I will NOT just randomly 'solve issues' or accept pull-requests. Like mentioned above: They are intended for our **OWN** use, but I just decided to also share them in the hopes that they might proof to be useful to others.
  
XNL Future Technologies  
https://www.teamxnl.com  
https://www.youtube.com/@XNLFutureTechnologies  

# What do these install/do?
The names of the scripts basically already tell what they are for :). If you want to know how they work, then just open/view the sh script and take a peek for yourself :)

I will make a small list here though which one does what (until this would for some reason become TOO big/long to 'maintain' ;)  
  
**XNLNVidiaInstall.sh**  
Will install everything required to install the NVidia drivers for your videocard, download the correct ones (Linux 64Bit) from here: https://www.nvidia.com/en-in/drivers/ and then **save that .run file in the same folder as this script and start the XNL script (NOT the .run file!)**  
  
**XNLJitsiMeetInstall.sh**  
Installs Jitsi Meet ("*our New Skype*") as a flatpak but it will first install (and setup) the 'flatpak system' so it can actually use it to install Jitsi.  


# How can I run them/They don't start!
After you've downloaded the .sh script(s), or you have saved the contents of one to a new .sh file on your own pc, you will first need to open a terminal (in the same directory as the script), and then use the command **chmod +x [scriptname].sh**  

This will simply put make the script executable. Once you have done that you can just simply type the name of the script like this:  
**./[scriptname].sh**  

**EXAMPLE:**  
chmod +x XNLNVidiaInstall.sh  
./XNLNVidiaInstall.sh  

This would then install the requirements of your NVidia driver and then start the .run installer for that driver (which you will need to download yourself for your card as explained in that script btw ;) ).



