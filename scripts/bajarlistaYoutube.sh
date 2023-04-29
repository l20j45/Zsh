#/bin/bash

youtube-dl --embed-thumbnail --audio-quality 0 --extract-audio --audio-format mp3 -a "$1"
