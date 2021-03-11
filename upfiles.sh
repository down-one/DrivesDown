#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://bangumi.moe/download/torrent/5fa2440032f14c000721e90f/[VCB-Studio]%20Minami%20no%20Niji%20no%20Lucy%20_%20%E5%8D%97%E6%96%B9%E5%BD%A9%E8%99%B9%E9%9C%B2%E8%A5%BF%20_%20%E5%8D%97%E3%81%AE%E8%99%B9%E3%81%AE%E3%83%AB%E3%83%BC%E3%82%B7%E3%83%BC%2010-bit%20720p%20HEVC%20DVDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=15; i<=650; i=i+15, j=j+15))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
echo "$i-$j 上传完成"
done
#总623 
