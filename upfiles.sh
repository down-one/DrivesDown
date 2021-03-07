#!/bin/bash
wget https://bangumi.moe/download/torrent/6042ff9032f14c00074aedd6/[VCB-Studio]%20Getsuyoubi%20no%20Tawawa%20_%20%E6%98%9F%E6%9C%9F%E4%B8%80%E7%9A%84%E4%B8%B0%E6%BB%A1%20_%20%E6%9C%88%E6%9B%9C%E6%97%A5%E3%81%AE%E3%81%9F%E3%82%8F%E3%82%8F%2010-bit%201080p%20HEVC%20BDRip%20[Reseed%20Fin].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=1064; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
#echo "$i-$j 上传完成"
#done
#
