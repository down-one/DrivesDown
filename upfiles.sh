#!/bin/bash
#aria2c "magnet:?xt=urn:btih:83908360bba6c64e39d89998193d40494dc8f9a0"
wget https://bangumi.moe/download/torrent/5912e6151a0b230822447d98/[VCB-Studio]%20Fate_Kaleid%20Liner%20Prisma%20Illya%20_%20%E9%AD%94%E6%B3%95%E5%B0%91%E5%A5%B3%E2%98%86%E4%BC%8A%E8%8E%89%E9%9B%85%20S1-S4%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=15; i<=2000; i=i+15, j=j+15))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done
