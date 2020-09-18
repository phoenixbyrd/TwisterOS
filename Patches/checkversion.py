import subprocess as sp
import resources as rs
import os
import wget
from tkinter import messagebox as msb
def other():
	msb.showinfo(title="TwistPatch", message='Extracting zip... Press OK to begin extraction.')
	os.system('unzip patch.zip')
	os.system('rm patch.zip')
	msb.showinfo(title="TwistPatch", message='The patcher will begin updating your system\npress OK to continue')
	os.system('chmod +x *patchinstall.sh')
	os.system('xfce4-terminal -e ./*patchinstall.sh')

def update():
	if os.path.exists('/usr/bin/twistver') == False:
		if os.path.exists('/usr/bin/xscreensaver') == False:
			answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.0\nIs this correct?')
			if answer == True:
				msb.showinfo(title="TwistPatch", message='Downloading 1.1.0 Patch in the background...\nPress OK to begin downloading.')
				wget.download('https://twisteros.com/Patches/TwisterOSv1-1Patch.zip', out='/home/pi/patcher/src/patch.zip')
				other()

		if os.path.exists('/usr/bin/com.github.libredeb.lightpad') == False:
			answer =  msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.1\nIs this correct?')
			if answer == True:
				msb.showinfo(title="TwistPatch", message='Downloading 1.2.0 Patch in the background...\nPress OK to begin downloading.')
				wget.download('https://twisteros.com/Patches/TwisterOSv1-2Patch.zip', out='/home/pi/patcher/src/patch.zip')
				other()

		if os.path.exists('/home/pi/WebApps/Discord/discord.sh') == False:
			answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.2\nIs this correct?')
			if answer == True:
				msb.showinfo(title="TwistPatch", message='Downloading 1.3.0 Patch in the background...\nPress OK to begin downloading.')
				wget.download('https://twisteros.com/Patches/TwisterOSv1-3Patch.zip', out='/home/pi/patcher/src/patch.zip')
				other()

		if os.path.exists('/usr/share/ThemeSwitcher/Raspbian95/splash.png') == False:
			answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.4.0\nIs this correct?')
			if answer == True:
				msb.showinfo(title="TwistPatch", message='Downloading 1.4.1 Patch in the background...\nPress OK to begin downloading.')
				wget.download('https://archive.org/download/twister-osv-1-4-1-patch/TwisterOSv1-4-1Patch.zip', out='/home/pi/patcher/src/patch.zip')
				other()

		if os.path.exists('/usr/share/ThemeSwitcher/RaspbianXP/splash.png') == False:
			answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.4.1\nIs this correct?')
			if answer == True:
				msb.showinfo(title="TwistPatch", message='Downloading 1.5.0 Patch in the background...\nPress OK to begin downloading.')
				wget.download('https://twisteros.com/Patches/TwisterOS1-5Patch.zip', out='/home/pi/patcher/src/patch.zip')
				other()

		if os.path.exists('/usr/local/bin/twistver') == False:
			answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.5.0 or 1.5.1\nIs this correct?')
			if answer == True:
				msb.showinfo(title="TwistPatch", message='Downloading 1.5.2 Patch in the background...\nPress OK to begin downloading.')
				wget.download('https://twisteros.com/Patches/TwisterOSv1-5-2Patch.zip', out='/home/pi/patcher/src/patch.zip')
				other()

		else:
			if rs.twistver == "Twister OS version 1.5.2":
				answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.5.2\nIs this correct?')
				if answer == True:
					msb.showinfo(title="TwistPatch", message='Downloading 1.6.0 Patch in the background...\nPress OK to begin downloading.')
					wget.download('https://twisteros.com/Patches/TwisterOSv1-6Patch.zip', out='/home/pi/patcher/src/patch.zip')
					other()

			if rs.twistver == "Twister OS version 1.6.0":
				answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.6.0\nIs this correct?')
				if answer == True:
					msb.showinfo(title="TwistPatch", message='Downloading 1.7.0 Patch in the background...\nPress OK to begin downloading.')
					wget.download('https://twisteros.com/Patches/TwisterOSv1-7Patch.zip', out='/home/pi/patcher/src/patch.zip')
					other()

			if rs.twistver == "Twister OS version 1.7.0":
				answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.7.0\nIs this correct?')
				if answer == True:
					msb.showinfo(title="TwistPatch", message='Downloading 1.8.0 Patch in the background...\nPress OK to begin downloading.')
					wget.download('https://twisteros.com/Patches/TwisterOSv1-8Patch.zip', out='/home/pi/patcher/src/patch.zip')
					other()

			if rs.twistver == "Twister OS version 1.8.0":
				answer = msb.askyesno(title="TwistPatch", message='You appear to be running Twister OS version 1.8.0\nIs this correct?')
				if answer == True:
					msb.showinfo(title="TwistPatch", message='Downloading 1.8.1 Patch in the background...\nPress OK to begin downloading.')
					wget.download('https://twisteros.com/Patches/TwisterOSv1-8-1Patch.zip', out='/home/pi/patcher/src/patch.zip')
					other()