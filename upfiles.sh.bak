#!/bin/bash
wget https://nyaa.si/download/1482765.torrent
aria2c -x 64 --bt-remove-unselected-file=true --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent


#aria2c -x 64 --bt-remove-unselected-file=true --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=601-847 *.torrent
#rm -rf ./*/*/*
#rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/二次元/漫画/18+/
#rm -rf *.torrent

rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ "onedrive:/我的文件 - animation_0 的文件/temp"
#rclone copy -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ nice:/本子
#sed -i 's/1qlwVq_cOqKzqrBs-H8SQtRSjFX73puKl/1nss8XNHqrhhktpp0D1Epaq4ylUbjLDcZ/g' /home/runner/.config/rclone/rclone.conf
#rclone copy -v --transfers 12 --checkers 16 --onedrive-chunk-size 100M --exclude "*.{sh,torrent,aria2}" gd:/ nice:/杂项/2020年09月/
