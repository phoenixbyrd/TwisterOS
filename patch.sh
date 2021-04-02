#!/bin/bash
# Cloning the Updated neofetch script from https://raw.githubusercontent.com/Jai-JAP/neofetch/patch-1/neofetch to /tmp/neofetch
wget -q https://raw.githubusercontent.com/Jai-JAP/neofetch/patch-1/neofetch -O /tmp/neofetch

# Make neofetch script executable
chmod +x /tmp/neofetch

# Moving the neofetch script to /usr/bin
sudo mv /tmp/neofetch /usr/bin/neofetch
echo "neofetch script patched for native Twister OS support." 

# Removing all old neofetch configs
sudo rm -rf ~/.config/neofetch/*

# Installing dependencies required to improve .neofetch script
sudo apt install wmctrl

# Updating the .neofetch script in home directory
if [[ -x ~/.neofetch ]] ; then
  if [[ -z "$(cat ~/.neofetch | grep wmctrl)" ]] ; then
    sed -i 's/neofetch/wmctrl -i -r $WINDOWID -b add,maximized_vert,maximized_horz\nneofetch/g' ~/.neofetch 
    echo ".neofetch launch script patched successfully."
  elif [[ -n "$(cat ~/.neofetch | grep wmctrl)" ]] ; then
    echo ".neofetch launch script already patched." 
  fi
else echo ".neofetch launch script does not exist."
fi
