#!/bin/bash
wget https://nyaa.si/download/1567640.torrent
aria2c -x 64 --bt-remove-unselected-file=true --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent

rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ "onedrive:/animation_1/Lilith-Raws/[Lilith-Raws] Fate/Grand Order - 終局特異點 冠位時間神殿所羅門 / Fat"
