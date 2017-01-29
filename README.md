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


# TODO:
write the program in c, still calling omxplayer
