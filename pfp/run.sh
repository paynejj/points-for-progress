#!/bin/bash
# Put this script at the root of any rapid project to start the servers
# in a detached tmux session. **Should be able to run from anywhere**

SESSNAME="rapid"
ABSPATH=$(readlink -f "$0")
ROOTDIR=$(dirname "$ABSPATH")

print_info() {
	echo "Use 'tmux attach-session -t $SESSNAME' to see server output"
	echo "Use 'tmux kill-session -t $SESSNAME' to kill servers"
	exit
}

start_servers() {
	echo "Starting servers"
	cd "$ROOTDIR" || exit
	tmux new -d -s $SESSNAME 'pnpm run dev'
	tmux splitw -dh 'rapid run'
}

is_running() {
	tmux has-session -t $SESSNAME 2>/dev/null
}

if is_running; then
	echo "Servers already running"
else
	start_servers
fi
print_info
