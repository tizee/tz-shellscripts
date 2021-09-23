#!/usr/bin/env sh

ffmpeg -i file-name.mov -pix_fmt rgb24 -f gif -ss HH:MM:SS -t HH:MM:SS - | gifsicle --optmize=2 > output.gif
