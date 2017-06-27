hour=$(date +%H)
if [ "$hour" -lt 17 -a "$hour" -ge 8 ]; then
	/usr/bin/slack --disable-gpu %U
fi
