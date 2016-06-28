#!/usr/bin/lua

require("iwinfo")

iface = "wlan0"
t = iwinfo.type(iface)

while (1) do
	
	clients = iwinfo[t].assoclist(iface)

	for k,v in pairs(clients) do
    	os.execute("curl -H \"Content-Type: application/json\" -X POST -d '{\"badge\":\""..k.."\",\"AP\":\"C4:E9:84:6C:9D:EE\",\"signal\":"..v.signal.."}' --interface wlan0 http://192.81.213.239:1880/")
	end

	os.execute("sleep 3")

end



