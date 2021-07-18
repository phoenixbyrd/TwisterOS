#!/bin/bash

#Create Install Directory
mkdir ~/VendettaInstall && cd ~/VendettaInstall

#Install Required Dependencies
sudo apt install p7zip-full

#Download Installer
wget http://download.guildsoftware.com/vendetta-linux-ia32-installer.sh

#Rename, extract, Rinse, Repeat
mv vendetta-linux-ia32-installer.sh vendetta-linux-ia32-installer.7z
7z x vendetta-linux-ia32-installer.7z
mv vendetta-linux-ia32-installer vendetta-linux-ia32-installer.7z
7z x vendetta-linux-ia32-installer.7z

#Download Fancy Icon
wget https://lh6.ggpht.com/aPGd2deF8ldQElv5EyQHgeexOXrzx6LgCqdbWWJP8qajGSAr6vWi7a-PksjoL00S8Ho=w300
sudo mv aPGd2deF8ldQElv5EyQHgeexOXrzx6LgCqdbWWJP8qajGSAr6vWi7a-PksjoL00S8Ho=w300 /usr/share/icons/vendetta.png

#Create Desktop Entry
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=Vendetta Online
Comment=Vendetta Online
Exec= update.rlb
Icon=vendetta
Path=~/.vendetta
Categories=Game
Terminal=false
StartupNotify=false" > ~/Desktop/vendetta.desktop

#Copy to Game Menu
cp ~/Desktop/vendetta.desktop ~/.local/share/applications/vendetta.desktop

#Install Game
mkdir ~/.vendetta
mv ~/VendettaInstall/install/* ~/.vendetta

#Cleanup After Yourself, You Don't Live in a Barn!
rm -rf ~/VendettaInstall

#Run Updater
chmod +x ~/.vendetta/vendetta
chmod +x ~/.vendetta/update.rlb
sudo ln ~/.vendetta/update.rlb /usr/local/bin
sudo ln ~/.vendetta/vendetta /usr/local/bin
update.rlb


