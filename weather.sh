#!/usr/bin/env sh

curl wttr.in/"$(curl -s --header "user-agent: Mozilla/5.0" https://api.ip.sb/geoip | jq -r ".city" | sed 's/ /%20/')"\?format="%l+%c%t"
