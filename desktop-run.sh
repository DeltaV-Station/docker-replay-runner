#!/bin/sh
set -e

# Wait for X
export DISPLAY="${DISPLAY:-:20}"
while [ ! -S "/tmp/.X11-unix/X${DISPLAY#:}" ]; do
  sleep 0.2
done

/usr/local/bin/prepare.sh &

exec openbox-session
