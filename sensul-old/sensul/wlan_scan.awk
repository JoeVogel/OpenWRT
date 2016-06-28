/^BSS/ {	
	mac = gensub ( /^BSS[[:space:]]*([0-9a-fA-F:]+).*?$/, "\\1", "g", $0 );
}
/^[[:space:]]*signal:/ {
	signal = gensub ( /^[[:space:]]*signal:[[:space:]]*(\-?[0-9.]+).*?$/, "\\1", "g", $0 );
}
/^[[:space:]]*SSID:/ {
	ssid = gensub ( /^[[:space:]]*SSID:[[:space:]]*([^\n]*).*?$/, "\\1", "g", $0 );
	print ("{\"macClient\":\""mac"\",\"macAP\":\"14:CC:20:D2:C6:4C\",\"dbm\":"signal",\"frequency\":2462}"); 


}
