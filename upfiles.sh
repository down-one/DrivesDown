#!/bin/bash
wget https://shthey-my.sharepoint.com/personal/hrf_shthey_onmicrosoft_com/_layouts/15/download.aspx?SourceUrl=%2Fpersonal%2Fhrf%5Fshthey%5Fonmicrosoft%5Fcom%2FDocuments%2F%E7%A7%8D%E5%AD%90%2Fs416%2Etorrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=1064; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
#echo "$i-$j 上传完成"
#done
