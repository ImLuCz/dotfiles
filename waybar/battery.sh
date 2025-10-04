#!/usr/bin/env bash

out=""

for bat in BAT0 BAT1; do
    cap_file="/sys/class/power_supply/$bat/capacity"
    status_file="/sys/class/power_supply/$bat/status"

    if [ -f "$cap_file" ]; then
        cap=$(cat "$cap_file")
        status=$(cat "$status_file")

        if [ "$status" = "Charging" ]; then
            icon="⚡"
        else
            icon=""
        fi

        short=$(echo "$bat" | sed 's/BAT/B/')   # BAT0 -> B0
        out+="$short:$cap%$icon "
    fi
done

echo "$out"

