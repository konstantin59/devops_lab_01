#!/bin/bash

CITY="$1"

echo "<HTML><BODY>"
echo ${CITY}
echo "<br />"
echo "<br />"
date
echo "<br />"
echo "<br />"
curl -s "https://wttr.in/${CITY}?format=j1" | jq '.current_condition[0] | "Temp: \(.temp_C)", "Hum: \(.humidity)"'
echo "</BODY><HTML>"