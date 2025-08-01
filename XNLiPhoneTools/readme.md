# XNL (Insider) Linux iPhone Helper Scripts
IMPORTANT: These scripts will ONLY WORK IF YOU ALSO USED THE INSTALLER in the root of this repo!
  
These scripts are mainly intended for our OWN INTERNAL use, but I decided to make them public just in case others might find them usefull. 
  
HOWEVER: Keep in mind that I do NOT give ANY support/help for/about these scripts, that using them is 100% at your own responsibility, and that they **might NOT be compatible for your system!**  
  
AGAIN: These are mainly intended for our own use, and these (currently) assume the following system configuration:  
Operating System: **Ubuntu/Kubuntu 24.04 LTS** (x64/64Bit)  
Desktop Environment: **KDE**  

# No Pull Requests, Tickets Etc supported
Due to these being of a more 'personal'/'inside' nature, I will NOT just randomly 'solve issues' or accept pull-requests. Like mentioned above: They are intended for our **OWN** use, but I just decided to also share them in the hopes that they might proof to be useful to others.
  
XNL Future Technologies  
https://www.teamxnl.com  
https://www.youtube.com/@XNLFutureTechnologies  

# What do these scripts do?  
This scripts are basically just simple helpers (which actually don't do that much at all), but they make it a bit easier for Windows refugees to get used to Linux while being able to use their iPhone (pull photo's and videos' from them).  
  
These scripts will help you pair your iPhone with your PC (needed to be able to connect and copy the files from it), and they will help you connect (and mount) and when you're done unmount and disconnect from the iPhone.  
  
# How to use  
NOTE: Again: This will only work if you have first used the XNLInstalliPhoneHelpers.sh script (since that one will install the required tools!)  
1. Use Pair-iPhone.sh to pair your iPhone with the pc (should only be needed once, but do make sure it's connected via USB, that it's on AND unlocked!)
2. Use Connect-iPhone.sh to connect to and mount your iPhone (it will automatically open Dolphin in the mounted folder)
3. Use Disconnect-iPhone.sh to unmount and disconnect your iPhone. ALWAYS use this one BEFORE removing the iPhone from the USB port!

# Doing It Manually  
If you are a bit further with Linux you can also do this yourself manually (it's not too advanced to be honest). The procedure for this would be:  

**Installing the required tools**  
sudo apt install ifuse libimobiledevice6 libimobiledevice-utils usbmuxd

**Making the mount folder**  
Make a directory in your home directory to mount your iPhone to, for example:  
mkdir ~/iPhoneMount  
  
**Pairing (MANUALLY)**  
Make sure your iPhone is connected to the USB port, that it's turned on AND that it is UNLOCKED ('loggedin'), then run the following command:
idevicepair pair  
Your iPhone will now ask if you want to trust "This Computer", answer with yes and your PC should now be paired with your iPhone (as trusted device).  
NOTE: Pairing SHOULD only be needed once!  
  
**Connecting to the iPhone**  
Use the following command to mount your iPhone to your local mount directory:  
ifuse ~/iPhoneMount  
Your iPhone should now mount to the directory iPhoneMount in your home directory, and that's also where you can access it's files from now on.  
  
**Do your thing**  
You can now 'do your thing' (as in copy/move files/photo's/videos from the iPhone to your PC for example)  

**Unmounting The iPhone**  
When you're done copying/moving your files run the following two commands:  
sync  
fusermount -u ~/iPhoneMount  
sync is optional but recommended. Simply put, this command will ensure that all read/write opperations are properly terminated/finished, after which you can (SHOULD) use the second command to unmount your iPhone so you can safely remove it from the USB port again.  
   
# But I have [insert problem/error here] with my iPhone/Linux
Sorry, like mentioned a couple times in this repo: I do not offer support/help/assitance or even updates for these scripts, they are mainly intended for our own **internal use** but I just decided to share them to help others where possible. You made the unfortunate choice to get an iPhone (a *mistake* I also lived with for two years 😉😂), and with that you unfortunately have to deal with the custom authentication issues which Apple uses with their devices. I (luckily) don't use iPhone anymore, so even IF I would want to help, I don't know where to look or how to even try it. Please consult other forums (either Ubuntu/Kubuntu or other Linux/iPhone websites) which have more experience with this.
  
