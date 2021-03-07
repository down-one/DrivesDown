#!/bin/bash
wget https://bangumi.moe/download/torrent/5fe188e132f14c0007304fe1/[VCB-Studio]%20Strike%20the%20Blood%20_%20%E5%99%AC%E8%A1%80%E7%8B%82%E8%A2%AD%20_%20%E3%82%B9%E3%83%88%E3%83%A9%E3%82%A4%E3%82%AF%E3%83%BB%E3%82%B6%E3%83%BB%E3%83%96%E3%83%A9%E3%83%83%E3%83%89%2010-bit%201080p%20HEVC%20BDRip%20[TV%20Reseed%20+%20OVA1%20Rev].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=1064; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
#echo "$i-$j 上传完成"
#done
