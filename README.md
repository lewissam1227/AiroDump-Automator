# AiroDump-Automator
Simple BASH scripts to somewhat automate airodump/aireplay attack.

****NOTE: YOU WILL HAVE TO RUN THIS AS ROOT*****
**** DO NOT USE THIS ON ANY NETWORK THAT YOU DO NOT OWN OR HAVE EXPRESS PERMISSION TO USE ON. THIS COULD INADVERTANTLY DAMAGE NETWORK COMMODITIES****
**** I AM NOT HELD RESPONSBILE FOR ANY MISUSE OF THIS PROGRAM****

Use: 
1. Make the files executable chmod +x airodump.sh && aireplay.sh
2. Run airodump.sh first ./airodump.sh
3. Follow instructions to press enter to continue
4. If you want to start a promiscuous interface, press y and hit enter. If you have already started one yourself, press n and hit enter. 
5. If you pressed y, a menu will appear, select which NAC you want to use to enter promiscuous mode. (i.e. type wlan0 if it's wlan0)Then press enter.
6. Next it will ask if you're wanting to dump network traffic, select y and hit enter.
7. It will then dump the nearby network traffic, once you see which target is yours press CTRL+C
8. Another menu will pop up asking if you would like to capture a handshake, press y and hit enter. 
9. It will then ask for the BSSID, copy and paste or type in the BSSID of the target network and hit enter.
10. Then it will ask to enter the channel. Copey and paste or type in the channel number of the target network and hit enter. 
11. It will then ask you to enter the monitor device name (This is your promiscuous network access card, so if you used wlan0, it will now be wlan0mon. Add in the "mon" at the end of whatever your card name was at the beginning. The reason this is redundant is if someone had already been using a promiscuous mode NAC)
12. KEEP THIS SCRIPT OPEN, open another terminal and fire up aireplay.sh
13. Copy and paste the BSSID of the target network into the aireplay script.
14. Copy and paste any MAC address under "Station" and hit enter. 
15. Enter your NAC name (i.e. wlan0mon)
16. It will then send deauth packets to the device that is connected to the access point, kicking it offline. Once the device reconnects, it will capture the WPA handshake which will be noted in the top right corner of the terminal using airodump.sh. 
17. From there, you can crack however you'd like (password lists, crunch, hashcat, etc...)
18. Happy Hacking!

See Video below for reference. 

[![](http://img.youtube.com/vi/fNs6obRE-UI/0.jpg)](http://www.youtube.com/watch?v=fNs6obRE-UI "AiroDump Automator")
