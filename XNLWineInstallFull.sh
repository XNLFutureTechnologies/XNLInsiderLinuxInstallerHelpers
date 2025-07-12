 
#!/bin/bash
echo "================================================================================"
echo "XNL Future Technologies Full Wine Installer Helper"
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
echo "This installer is intended to help them install Wine and A ALOT of the"
echo "commonly used runtimes as a base-setup for them running Wine in the most simple"
echo "way possible."
echo " "
echo "This script is intended for (AND ASSUMES) the use of Ubuntu/Kubuntu while using X11"
echo "Tested on Ubuntu/Kubuntu 24.04LTS"
echo " "
echo "!!!!!WARNING!!!!!!"
echo "This script installs quite an extensive set of Wine 'addons' for the tools, programs "
echo "and otherstuff we work with. This should not be a problem for most, but if you"
echo "want to know exactly what it installs, then please read the script BEFORE installing!"
echo " "
echo "IF you have a ~/.wine_base installation, then this installer WILL REMOVE IT!"
echo "This however also means that you can use this script (again) to 'reinstall/clean'"
echo "your base wine installation if something 'got messed up'."
echo " "
echo "NOTE: By default this installation is set to run in Windows 10 mode."
echo " "
echo "You might see some errors like: ReleaseMarshalData failed with error or"
echo "failed to load DLL etc.. Do NOT worry about those."
echo " "
echo "You MIGHT even get a popup that wine has crashed (in Linux itself) while the"
echo "script just keeps doing 'it's thing'. Don't worry about this either :)"
echo "================================================================================"
echo " "
read -p "Are you sure that you want to continue installing the 'XNL Wine Package'? [Y/N] " confirm

if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Installation Aborted!"
  exit 1
fi


# Install Wine and Winetricks (Won't do much if the latest versions are already installed)
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y wine32
sudo apt install -y wine
sudo apt install -y winetricks

# Installs winbind to provide ntlm_auth, required by Wine for NTLM authentication support (needed by some .NET installers and networked Windows apps)
sudo apt install -y winbind

# Set up Wine prefix
export WINEPREFIX="$HOME/.wine_base"

# Set Wine to run in 32 bit
export WINEARCH=win32

# Create a clean prefix
rm -rf "$WINEPREFIX"

wineboot

winetricks -q dotnet20      # .NET Framework 2.0
winetricks -q dotnet30      # .NET Framework 3.0
winetricks -q dotnet35      # .NET Framework 3.5
winetricks -q dotnet35sp1   # .NET Framework 3.5 SP1
winetricks -q dotnet40      # .NET Framework 4.0
winetricks -q dotnet45      # .NET Framework 4.5
winetricks -q dotnet48      # .NET Framework 4.8

winetricks -q corefonts     # Microsoft Core Fonts
winetricks -q allfonts      # All available fonts

winetricks -q vcrun6sp6     # Visual C++ 6.0 SP6 runtimes
winetricks -q vcrun2005     # Visual C++ 2005 runtimes
winetricks -q vcrun2008     # Visual C++ 2008 runtimes
winetricks -q vcrun2010     # Visual C++ 2010 runtimes
winetricks -q vcrun2012     # Visual C++ 2012 runtimes
winetricks -q vcrun2013     # Visual C++ 2013 runtimes
winetricks -q vcrun2015     # Visual C++ 2015 runtimes
winetricks -q vcrun2019     # Visual C++ 2019 runtimes

winetricks -q directx9      # DirectX 9
winetricks -q d3dx9         # Direct3D 9 extensions
winetricks -q d3dx10        # Direct3D 10 extensions
winetricks -q d3dx11        # Direct3D 11 extensions
winetricks -q d3dcompiler_43 # D3D Compiler 43
winetricks -q d3dcompiler_47 # D3D Compiler 47

winetricks -q dxvk          # Vulkan-based Direct3D 9/10/11 implementation

winetricks -q quartz        # DirectShow runtime
winetricks -q devenum       # DirectShow device enumerator
winetricks -q amstream      # DirectShow amstream

winetricks -q win10         # Set Windows version to Windows 10

winetricks -q msxml3        # MS XML 3
winetricks -q msxml4        # MS XML 4
winetricks -q msxml6        # MS XML 6

winetricks -q gdiplus       # GDI+ (graphics)

winetricks -q tahoma        # Tahoma font
winetricks -q usp10         # Uniscribe (Unicode script processor)
winetricks -q riched20      # RichEdit 2.0/3.0
winetricks -q riched30      # RichEdit 3.0

winetricks -q wsh57         # Windows Script Host 5.7
winetricks -q mfc42         # Microsoft Foundation Classes 4.2
winetricks -q mfc40         # Microsoft Foundation Classes 4.0
winetricks -q msvcirt       # Microsoft Visual C++ Runtime

wineboot
echo "================================================================================"
echo "XNL Future Technologies Base Wine Installation Script Completed"
echo "================================================================================"
