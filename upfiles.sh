#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://nyaa.si/download/992580.torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=2704, j=2706; i<=2999; i=i+1, j=j+1))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_0 的文件"/番/
echo "$i-$j 上传完成"
done
