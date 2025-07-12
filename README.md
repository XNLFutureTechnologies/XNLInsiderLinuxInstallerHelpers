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
Will install everything required to install the NVidia drivers for your videocard, download the correct ones (Linux 64Bit) from here: https://www.nvidia.com/en-in/drivers/ and then **save that .run file in the same folder as this script and start the XNL script (NOT the .run file!)** This script will also make sure that the 32 Bit drivers of NVidia will be installed **alongside** the 64 Bit drivers. This is important if you for example want to play steam games (using proton for example) on your pc. Without these 32 Bit drivers those games will simply not work (in most cases).
  
**XNLJitsiMeetInstall.sh**  
Installs Jitsi Meet ("*our New Skype*") as a flatpak but it will first install (and setup) the 'flatpak system' so it can actually use it to install Jitsi.  
  
**XNLWineInstallFull.sh**  
Installs **our XNL FULL Wine Setup Base System** including A LOT of runtimes which are (or might) be used by the applications, games, tools etc we use(d). For 'outsiders' it is HIGHLY recommended to first open this script in Kate (or any other editor) and check what it installs. If you don't want certain things to be installed, then you can disable them by outcommenting them (putting an # infront of the line).  Wine is used to run most of the Windows desktop applications we use, but in this configuration it can also run A LOT of the older games just fine. However for most games I would recommend running them with Proton (or even via steam with uses proton for example).

**XNLVirtualMachineSetup.sh**  
Installs **qemu-kvm** and **Virtual Machine Manager** (plus the required basic setup)

# How can I run them/They don't start!
After you've downloaded the .sh script(s), or you have saved the contents of one to a new .sh file on your own pc, you will first need to open a terminal (in the same directory as the script), and then use the command **chmod +x [scriptname].sh**  

This will simply put make the script executable. Once you have done that you can just simply type the name of the script like this:  
**./[scriptname].sh**  

**EXAMPLE:**  
chmod +x XNLNVidiaInstall.sh  
./XNLNVidiaInstall.sh  

This would then install the requirements of your NVidia driver and then start the .run installer for that driver (which you will need to download yourself for your card as explained in that script btw ;) ).
  
# Terminal? What Terminal? WHERE?
Ohhhhh boyyyyy.. You're *THAT* new huh? ;) No worries ;). If you're using the system we (currently) recommend using (internally), then you can simply open a terminal by either pressing **crtl+alt+t** (however this will in most cases open the terminal in your home directory (~), and you would then for example need to do **cd Downloads** to 'move into' downloads directory, or you can in your file manager (most support this, and the KDE Standard (Dolphin) sure does) right click and click on **Open Terminal Here**

# Small additional beginner tips (terminal commands/tricks)
cd = Change Directory  
ls = will show the contents of the directory  
When typing a file name, you can press the TAB Key and it will 'auto complete' until where it would for example 'collide' with another filename in the same folder. Make this feature a habbit because it will save you A LOT of time eventually once you get the hang of it ;)  
  



