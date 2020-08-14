#!/bin/bash

# NEOFETCH TWISTER PATCHER
echo 'This patch will change the ASCII of neofetch.'
sleep 5

# Back default neofetch config
echo 'Backing-up config...'
sudo mv ${HOME}/.config/neofetch/config.conf ${HOME}/.config/neofetch/config.conf.bak

# Download the config and ASCII
echo 'Downloading configs...'
curl -sL -o ${HOME}/.config/neofetch/config.conf https://gitlab.com/Natsurii/twisteros-neofetch/-/raw/master/config.conf
curl -sL -o ${HOME}/.config/neofetch/twister.txt https://gitlab.com/Natsurii/twisteros-neofetch/-/raw/master/twister.txt

echo 'DONE PATCHING!'
sleep 5
clear
neofetch
