#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://bangumi.moe/download/torrent/5bc54d4ede4560f455f669a5/[VCB-Studio]%20School%20Rumble%20_%20%E6%A0%A1%E5%9B%AD%E8%BF%B7%E7%B3%8A%E5%A4%A7%E7%8E%8B%20_%20%E3%82%B9%E3%82%AF%E3%83%BC%E3%83%AB%E3%83%A9%E3%83%B3%E3%83%96%E3%83%AB%2010-bit%20720p%20HEVC%20DVDRip%20[S1+S2+OVAs%20Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=12; i<=900; i=i+12, j=j+12))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_0 的文件"/番/
echo "$i-$j 上传完成"
done
