#!/bin/bash
run () {
	if ! pgrep -f "$1" ;
	then
		"$@"&
	fi
}

# window compositor picom (for terminal bg transparency)
run "picom -f "

#
run "keychain --quiet "
