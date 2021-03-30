#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://bangumi.moe/download/torrent/5c286555de4560f455f86583/[VCB-Studio]%20Shingeki%20no%20Kyojin_Attack%20on%20Titan%20_%20%E8%BF%9B%E5%87%BB%E7%9A%84%E5%B7%A8%E4%BA%BA%20_%20%E9%80%B2%E6%92%83%E3%81%AE%E5%B7%A8%E4%BA%BA%2010-bit%201080p%20HEVC%20BDRip%20[MOVIE+OADs%20Rev%20Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=12; i<=190; i=i+12, j=j+12))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_0 的文件"/番/
echo "$i-$j 上传完成"
done
