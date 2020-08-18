#!/bin/bash

if [ ! -f "/usr/bin/xscreensaver" ]; then
    echo "Twister OS version 1.0.0"
    exit
fi

if [ ! -f "/usr/bin/com.github.libredeb.lightpad" ]; then
    echo "Twister OS version 1.1.0"
    exit
fi

if [ ! -f "/home/pi/WebApps/Discord/discord.sh" ]; then
    echo "Twister OS version 1.2.0"
    exit
fi

if [ ! -f "/usr/share/ThemeSwitcher/Raspbian95/splash.png" ]; then
    echo "Twister OS version 1.3.0"
    exit
fi

if [ ! -f "/usr/share/ThemeSwitcher/RaspbianXP/splash.png" ]; then
    echo "Twister OS version 1.4.1"
    exit
fi

if [ ! -f "/usr/local/bin/twistver" ]; then
    echo "Twister OS version 1.5.0"
    exit
fi

echo "Twister OS version 1.5.2"
