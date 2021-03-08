#!/bin/bash
wget https://shthey-my.sharepoint.com/:u:/g/personal/hrf_shthey_onmicrosoft_com/ESutbyX3u65Es33u2qU51E8BSCModrT18jsYkqo0nbTwnA?e=3qVnj1
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=1064; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
#echo "$i-$j 上传完成"
#done
