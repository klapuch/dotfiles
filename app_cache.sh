if [ -d "/media/dom/crystal" ]; then
	rm -rf ~/.cache/spotify
	ln -fs /media/dom/crystal/cache/spotify ~/.cache/spotify

	rm -rf ~/.cache/chromium
	ln -fs /media/dom/crystal/cache/chromium ~/.cache/chromium
else
	rm ~/.cache/spotify
	rm ~/.cache/chromium
	mkdir ~/.cache/spotify
	mkdir ~/.cache/chromium
fi
