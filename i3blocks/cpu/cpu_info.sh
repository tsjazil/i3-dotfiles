#!/bin/sh
TEMP=$(sensors | grep 'Package id 0:\|Tdie' | grep ':[ ]*+[0-9]*.[0-9]*°C' -o | grep '+[0-9]*.[0-9]*°C' -o)
CPU_USAGE=$(sar -u 1 1 | awk '/Average:/ {printf("%s\n", $(NF-9))}')
echo "$CPU_USAGE $TEMP" | awk '{ printf "%04.1f", (100 - $8), $1, $2 }'
