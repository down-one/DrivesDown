#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://dl.dmhy.org/2021/03/04/c2e9458c41dbe3bebba19ee88ee52117e22213d0.torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=691, j=705; i<=2500; i=i+15, j=j+15))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
echo "$i-$j 上传完成"
done
#总623 
