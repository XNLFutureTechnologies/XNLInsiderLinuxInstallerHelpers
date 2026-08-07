This version should be used on Kubuntu 26.04 while the other RightClickMenu directory
should be used on Kubuntu 24.04. This one is NOT included in the automatic installer script so you'll have to install this one yourself manually. 
 
It's not that difficult though :) 
 
1. (after downloading and extracting this repo it of course ;): Open Dolphin
2. Navigate to: ~/.local/share
3. Paste the kio directory from the download into that (share) directory
4. (still in Dolphin): Navigate into the Kio directory and then into the servicemenus directory
5. (Open the) right click menu and then select Open Terminal Here

In the terminal type:
chmod +x *
(This will make sure the script are executable and usable again from the right click menu)

And then you're done, the XNL Ft. options should re-appear again in your right click menu and just like you're used to, they will also be 'context aware' depending on where or on what you right clicked.
