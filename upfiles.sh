#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://38a14def5b4acf2eef7364488813ea9b.dlied1.cdntips.net/dlied1.qq.com/qqweb/PCQQ/PCQQ_EXE/PCQQ2021.exe?mkey=6144bd1075b5cda0&f=17c5&cip=117.181.235.85&proto=https&access_type=
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=10; i<=2000; i=i+10, j=j+10))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone copy -v --checksum --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/整理
#rclone copy -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
#echo "$i-$j 上传完成"
#done
