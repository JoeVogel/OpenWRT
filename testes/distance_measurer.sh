#!/bin/sh



while true; do

        iw dev wlan0 station dump | grep '5c:cf:7f:11:67:20\|signal'

        sleep 1

done

