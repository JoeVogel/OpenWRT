#!/bin/sh



while true; do 
	
	iw dev wlan0 scan | awk -f wlan_scan.awk | awk -f json.awk
	sleep 1

done
