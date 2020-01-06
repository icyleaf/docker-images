#!/usr/bin/env bash

BT_TRACKERS_URL=${BT_TRACKERS_URL:-"https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_best_ip.txt"}

echo 'Downloading BT trackers'
BT_TRACKERS=`curl $BT_TRACKERS_URL | tr -s '\n' ';'`
sed -i '/bt-tracker.*/'d /etc/conf/aria2/aria2.conf
echo "bt-tracker=${BT_TRACKERS}" >> /etc/conf/aria2/aria2.conf
