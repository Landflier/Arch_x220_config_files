#!/bin/bash
run () {
	if ! pgrep -f "$1" ;
	then
		eval "$@"&
	fi
}

# window compositor picom (for terminal bg transparency)
run "picom -f"
# feh for background image
run "feh --no-fehbg --bg-scale '/home/darkness/.wallpapers/lighthouse.jpg'"
# keyechain for ssh keys (used in Github)
run "keychain --quiet --eval --noask Photoemission-git-doc github_Landflier id_ed25519"
# Mathpix, if set as alias in .bashrc
# run "mpix"
#
# run "keychain --quiet "
