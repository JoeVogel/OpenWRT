#!/bin/sh



while true; do 
	
	iw dev wlan0 scan | awk -f /usr/bin/sensul/wlan_scan.awk | awk -f /usr/bin/sensul/json.awk
	sleep 5

done
