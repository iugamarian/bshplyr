# bshplyr
=======

# bash service music player for arch on Raspberry Pi, no login, keyboard or monitor required, autostarts

Adapted for directory structure (just copy the folders with music in /root/music), creates lists only for .wav .flac .mp3 .ogg .mp4 thus avoiding other files like .m3u .jpg .txt

bshplyr-delete-raspbian-lite works on Raspbian Lite

On Raspbian Lite:

starting the player with /usr/bin/omxplayer instead of /usr/bin/omxplayer.bin

testing the player needs omxplayer instead of omxplayer.bin

killall needs omxplayer.bin instead of /usr/bin/omxplayer.bin


# Install on Raspbian Lite

# On another computer prepare bshplyr (apt and apt-get hang on download with IPV6 if ISP only has IPV4):

sudo apt-get install -y git

git clone https://github.com/iugamarian/bshplyr/

cd bshplyr

chmod +x before-setup

chmod +x setup-bshplyr-delete-raspbian-lite

# Copy bshplyr to /root in Raspbian Lite and in there install it:

sudo -s

./before-setup

./setup-bshplyr-delete-raspbian-lite

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
write the program in c, still calling omxplayer or mpv
