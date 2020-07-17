#Configuration:

HANDSHAKE='/root/Handshakes/HandShake*.cap'
WORDLIST='/usr/share/wordlists/rockyou.txt'
MONITER=mon0

#End configuration

echo " AIRODUMP AUTOMATER BY SAM LEWIS"
echo " THIS ONE IS FOR YOUR BOBBY!"
echo ""
echo ""
echo "========Press enter to continue========"
read START
if [[ $START == "" ]]; then
sleep 2
clear
fi

#Use at your own risk...

echo "---------------------------------------------------"
echo "-Would you like to start a monitor interface[y/n]?-"
echo "---------------------------------------------------"
echo ""
read MONIF

if [[ $MONIF == 'y' ]]; then
echo ""
iwconfig
echo "Please select a wireless interface from above"
echo ""
read WIRELESS
[[ $WIRELESS == ""mon ]]
sleep 2
clear
echo "Starting interface on $WIRELESS..."
sleep 2
airmon-ng start $WIRELESS
sleep 4
clear
else
echo ""
echo "Skipping..."
sleep 2
clear
fi

echo "--------------------------------------------------"
echo "-Would you like to dump the network traffic[y/n]?-"
echo "--------------------------------------------------"
echo ""
read DUMP
if [[ $DUMP == 'y' ]]; then
echo ""
echo "Dumping network traffic...[Ctrl-C to stop]"
sleep 4
airodump-ng $WIRELESS"mon"
else
echo ""
echo "Skipping..."
sleep 2
clear
fi

echo "---------------------------------------------"
echo "-Would you like to capture a handshake[y/n]?-"
echo "---------------------------------------------"
echo ""
read HANDC

if [[ $HANDC == 'y' ]]; then
echo ""
echo "Creating directory Handshakes..."
echo ""
sleep 2
cd ~
mkdir Handshakes &> /dev/null
echo ""
echo "Please enter the network BSSID:"
echo ""
read BSSID
[[ $BSSID == "" ]]
echo ""
echo "Please enter the network channel:"
echo ""
read CHNEL
[[ $CHNEL == "" ]]
echo ""
echo "Please enter the monitor device name:"
echo ""
read MON
[[ $MON == "" ]]
airodump-ng -c $CHNEL --bssid $BSSID -w /root/Desktop/ $MON
fi
echo "Happy Hacking!"
