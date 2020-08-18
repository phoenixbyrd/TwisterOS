#!/bin/bash
function checkVersion {
if [ ! -f "/usr/bin/xscreensaver" ]; then
    read -p 'You appear to be running Twister OS version 1.0.0. Is this correct? Press [Enter] if yes, or [CTRL+C] if no'
    	echo 'Downloading 1.1.0 Patch...'
	wget https://twisteros.com/Patches/TwisterOSv1-1Patch.zip
	echo 'Extracting .zip...'
	unzip *.zip
	rm *.zip
	clear
	echo "Additional updates are available. Once this update finishes, and your computer restarts, please run this update utility again."
	chmod +x *patchinstall.sh
	./*patchinstall.sh
fi

if [ ! -f "/usr/bin/com.github.libredeb.lightpad" ]; then
    read -p 'You appear to be running Twister OS version 1.1.0. Is this correct? Press [Enter] if yes, or [CTRL+C] if no'
    	echo 'Downloading 1.2.0 Patch...'
	wget https://twisteros.com/Patches/TwisterOSv1-2Patch.zip
	echo 'Extracting .zip...'
	unzip *.zip
	rm *.zip
	clear
	echo "Additional updates are available. Once this update finishes, and your computer restarts, please run this update utility again."
	chmod +x *patchinstall.sh
	./*patchinstall.sh
fi

if [ ! -f "/home/pi/WebApps/Discord/discord.sh" ]; then
    read -p 'You appear to be running Twister OS version 1.2.0. Is this correct? Press [Enter] if yes, or [CTRL+C] if no'
    	echo 'Downloading 1.3.0 Patch...'
	wget https://twisteros.com/Patches/TwisterOSv1-3Patch.zip
	echo 'Extracting .zip...'
	unzip *.zip
	rm *.zip
	clear
	echo "Additional updates are available. Once this update finishes, and your computer restarts, please run this update utility again."
	chmod +x *patchinstall.sh
	./*patchinstall.sh
fi

if [ ! -f "/usr/share/ThemeSwitcher/Raspbian95/splash.png" ]; then
    read -p 'You appear to be running Twister OS version 1.3.0. Is this correct? Press [Enter] if yes, or [CTRL+C] if no'
    	echo 'Downloading 1.4.1 Patch...'
	wget https://archive.org/download/twister-osv-1-4-1-patch/TwisterOSv1-4-1Patch.zip
	echo 'Extracting .zip...'
	unzip *.zip
	rm *.zip
	clear
	echo "Additional updates are available. Once this update finishes, and your computer restarts, please run this update utility again."
	chmod +x *patchinstall.sh
	./*patchinstall.sh
fi

if [ ! -f "/usr/share/ThemeSwitcher/RaspbianXP/splash.png" ]; then
    read -p 'You appear to be running Twister OS version 1.4.1. Is this correct? Press [Enter] if yes, or [CTRL+C] if no'
    	echo 'Downloading 1.5.0 Patch...'
	wget https://twisteros.com/Patches/TwisterOS1-5Patch.zip
	echo 'Extracting .zip...'
	unzip *.zip
	rm *.zip
	clear
	echo "Additional updates are available. Once this update finishes, and your computer restarts, please run this update utility again."
	chmod +x *patchinstall.sh
	./*patchinstall.sh
fi

if [ ! -f "/usr/local/bin/twistver" ]; then
    read -p 'You appear to be running Twister OS version 1.5.0 or 1.5.1. Is this correct? Press [Enter] if yes, or [CTRL+C] if no'
       	echo 'Downloading 1.5.2 Patch...'
	wget https://twisteros.com/Patches/TwisterOSv1-5-2Patch.zip
	echo 'Extracting .zip...'
	unzip *.zip
	rm *.zip
	clear
	echo "Additional updates are available. Once this update finishes, and your computer restarts, please run this update utility again."
	chmod +x *patchinstall.sh
	./*patchinstall.sh
fi

VERSIONCURRENT=$(twistver)

if [ "$VERSIONCURRENT" = "Twister OS version 1.5.2" ]; then
    read -p "You appear to be running Twister OS version 1.5.2. Is this correct? Press [Enter] if yes, or [CTRL+C] if no"
       	#echo 'Downloading 1.6.0 Patch...'
	#wget
	#echo 'Extracting .zip...'
	#unzip *.zip
	#rm *.zip
	#clear
	#echo "Additional updates are available. Once this update finishes, and your computer restarts, please run this update utility again."
	#chmod +x *patchinstall.sh
	#./*patchinstall.sh
fi
}
