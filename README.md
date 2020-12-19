# bshplyr
=======

Bash service music player for Raspbian on Raspberry Pi, no login, keyboard or monitor required, autostarts


# Updated for the end of the year 2020

Added volume control option when pressing the back button longer

Added safely power off option when pressing the next button longer

Reduced the warning messages and error messages done by the script.

Please install with the setup files ending ending in 2020.

# Install on Raspbian Lite

On another computer prepare bshplyr (apt and apt-get hang on download with IPV6 if ISP only has IPV4):

sudo apt-get install -y git

git clone https://github.com/iugamarian/bshplyr/

cd bshplyr

chmod +x before-setup-2020

chmod +x setup-2020

Copy bshplyr to /root in Raspbian Lite and in there install it:

sudo -s

./before-setup-2020

The system will reboot.

sudo -s

./setup-2020

exit


# How to use it

1) Start in the destination Linux, install, disable serial interface in raspi-config (free GPIO 17 and GPIO 18) and poweroff

2) Get another SDCARD in a USB adapter or USB stick, format it FAT32 or EXT4, copy music to it, put it in Raspberry Pi. Or get the Raspbian SDCARD out and put some music from another computer in the ext4 folder /root/music

2) Put hardware buttons that pull to ground when pressed on GPIO 17 (DELETE) and GPIO 18 (NEXT)

3) Put SDCARD in

4) Apply 5V power, listen and delete or next, remove 5V power, it remembers the last song played.

5) When you consider there is no more music to be deleted, make a backup of the music or /root/music and rename the backup to selected-music-YY-MM-DD

6) Remove power listen to the music in another player and go to 2) when you get bored with current music.


# TODO:
write the program in c, still calling mpv
