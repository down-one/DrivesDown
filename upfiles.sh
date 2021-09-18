#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
#wget https://sukebei.nyaa.si/download/3249324.torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 "magnet:?xt=urn:btih:A8033851E65E4F7F88D628B39A636AB8E6E75E6D&dn=%5BFHD%5DSDMU-673"
#for ((i=1, j=10; i<=2000; i=i+10, j=j+10))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/整理
#rclone copy -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
rm -rf /home/runner/work/DrivesDown/DrivesDown/download/*
#echo "$i-$j 上传完成"
#done
