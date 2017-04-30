# bshplyr
=======

# bash service music player for arch on Raspberry Pi, no login, keyboard or monitor required, autostarts

Adapted for directory structure (just copy the folders with music in /root/music), creates lists only for .wav .flac .mp3 .ogg .mp4 thus avoiding other files like .m3u .jpg .txt

bshplyr-delete works on Arch Linux Arm

bshplyr-delete-raspbian-lite works on Raspbian Lite

On Raspbian Lite:

starting the player with /usr/bin/omxplayer instead of /usr/bin/omxplayer.bin

testing the player needs omxplayer instead of omxplayer.bin

killall needs omxplayer.bin instead of /usr/bin/omxplayer.bin

# Install on Arch Linux ARM

sudo pacman -S git

git clone https://github.com/iugamarian/bshplyr/

cd bshplyr

chmod +x setup-bshplyr-delete

sudo -s

./setup-bshplyr-delete

exit



# Install on Raspbian Lite

sudo apt-get install -y git

git clone https://github.com/iugamarian/bshplyr/

cd bshplyr

chmod +x setup-bshplyr-delete-raspbian-lite

sudo -s

./setup-bshplyr-delete-raspbian-lite

exit


# How to use it

1) Start in the destination Linux and install and poweroff

2) Get SDCARD out and put some music from another computer in the ext4 folder /root/music

2) Put buttons that pull to ground when pressed on GPIO 17 (DELETE) and GPIO 18 (NEXT)

3) Put SDCARD in

4) Apply power, listen and delete or next, remove player, remembers last song played.

5) When you consider there is no more music to be deleted, make a backup of /root/music and rename the backup to selected-music-YY-MM-DD

6) Remove power and go to 2) when you get bored with current music.


# TODO:
write the program in c, still calling omxplayer
