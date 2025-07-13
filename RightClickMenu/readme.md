# XNL (Insider) Right Click Context Menu(s)
These are just a couple of helper scripts for a couple of our insider members, team members and even a couple of (private) friends who have recently switched to Linux for the first time.
  
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

# What do these do?
This 'add-on' adds an extra sub-option to your right-click menu so that you get an extra menu in your 'file explorer' **XNL Ft. Functions**  
  
This menu for example helps you easily (and quickly) perform actions as you where/are used to in Windows:
- Create a shortcut
- Create a shortcut as sudo ("Run as administrator") WARNING: NOT recommended for most programs/tools etc though!
- Open Current Folder (you right clicked on) in VSCode as 'workspace'

**NOTE:** It can can also create a shortcut to an directory and will then use a **green** icon for the folder (directory) so that it's clear that it's a shortcut and not the actual folder (DO STILL BE CAREFULL WHEN REMOVING 'GREEN FOLDERS' OBVIOUSLY! Since there could still be other applications which have set their 'folder color' to green!!)
  
**Wine Options**  
There is (now on request) also second menu (only when right clicking on an .exe file!) called ***XNL Ft. Wine*** which will show the following:
- Start with Wine
- Create Wine Launcher (Shortcut)
- Set Wine to Windows 10 Mode
- Set Wine to Windows 7 Mode
- Set Wine to Windows XP Mode

NOTE: To use the XNL Ft. Wine options you will first have to run the **XNLWineInstallFull.sh** so that our 'base XNL wine environment' is setup properly!  
  
You can then use these to run most of the windows applications (and even games!) just with a simple right click and then using the XNL Ft. Functions menu :)  

**IMPORTANT**  
Usually you would actually setup a 'Wine environment' per application (prefix), so that when you would have to tweak it for certain applications that it doesn't affect the other applications ("setting sandboxing" if you will). However for Linux beginners just wanting to run the basic windows stuff, this configuration I've created for our new Linux users will work just fine for 99% of the stuff we all use :) I do however recommend when you're a bit further with Linux and using Wine, that you do look into setting up own wine prefixes for applications which do require custom tweaks :)

  
# How do I install these 'Right-click-options'??
UPDATE: No manual copy-pasting of folders anymore for this 'install', you can now just run ./XNLInstallRightClickMenus.sh (after chmodding it ofcourse ;)) and it will install these menu's automatically for you.
  
NOTE: These functions will only appear where they are usable. The Wine functions will for example only show up when you right click on an .exe file.

# Example Difference when making your own ServiceMenus
The *XNL Ft. Functions* menu uses a sepperate .desktop file ("script") for each menu option/item, while the *XNL Ft. Wine* menu used a single .desktop file with all the options in it at once. I've done this on purpose so it is still easy to understand for beginners and they also have an example of a more cleaner solution with multiple items at once :)

# I do see script errors when running kbuildsycoca5 for example??!!
Yes, that is possible, most likely you will get a few "Invalid escape sequence" errors. Very simply explained: The menu options which create a Launcher (shortcut) use "inline Bash scripts" to generate these shortcuts, and these scripts need to quote the full path of the selected file (to handle spaces in paths, e.g., /media/drive_d/Personal Files/demo.exe to that it becomes: **"**/media/drive_d/Personal Files/demo.exe**"** in the .desktop file it creates). But the KDE .desktop file parser does not support certain escape sequences (like \") in the Exec line. This does however not matter since the entire command is wrapped in single quotes (' '), the KDE parser passes it as-is to Bash, which then does interpret the escapes correctly. So, even if you see a warning like that, it does not affect the functionality and the shortcuts work just as intended :).




