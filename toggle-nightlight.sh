#!/usr/bin/env bash

PIDFILE="/tmp/gammastep.pid"

if [ -f "$PIDFILE" ] && kill -0 "$(cat "$PIDFILE")" 2>/dev/null; then
    # Already running → kill it
    kill "$(cat "$PIDFILE")"
    rm -f "$PIDFILE"
else
    # Not running → start it
    gammastep -O 2500 &
    echo $! > "$PIDFILE"
fi

