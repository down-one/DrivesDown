#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://bangumi.moe/download/torrent/5de9e386306f1a0007c559e0/[VCB-Studio]%20RWBY%20_%20%E5%9B%9B%E8%89%B2%E6%88%98%E8%AE%B0%2010-bit%201080p%20HEVC%20BDRip%20[WEB%20Vol.1-Vol.4%20+%20SP%20Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=181, j=195; i<=2500; i=i+15, j=j+15))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
echo "$i-$j 上传完成"
done
#总623 
