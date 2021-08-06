command=iwgetid -r | tr '\n' ' ' && grep $(iwgetid -m | awk '{ printf "%s", $1 }') /proc/net/wireless | awk '{ printf " %i%\n", int($3 * 100 / 70) }'
