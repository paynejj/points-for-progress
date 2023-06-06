#!/bin/bash
sess="rapid"

if ! tmux has-session -t $sess; then
	echo "Starting Servers"
	cd ~/pfp/ || exit
	tmux new -d -s $sess 'pnpm run dev'
	tmux rename-window -t $sess:0 'rapid'
	tmux splitw -dh 'rapid run'
else
	echo "Servers Already Running"
fi
