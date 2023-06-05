#!/bin/bash
run () {
	if ! pgrep -f "$1" ;
	then
		eval "$@"&
	fi
}

# window compositor picom (for terminal bg transparency)
run "picom -f"
run "feh --no-fehbg --bg-scale '/home/darkness/.wallpapers/lighthouse.jpg'"
#
# run "keychain --quiet "
