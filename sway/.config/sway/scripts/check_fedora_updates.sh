#!/usr/bin/bash

#thresholds
threshold_yellow=24
threshold_red=99

#count updates available
updates=$(dnf check-upgrade -q | wc -l)

css_color="green"

if [[ $updates -gt $threshold_red ]]; then
    css_color="red"
elif [[ $updates -gt $threshold_yellow ]]; then
    css_color="yellow"
fi

if [ "$updates" != 0 ]; then
    printf '{"text": "%s", "alt": "%s", "tooltip": "Please update your system", "class": "%s"}' "$updates" "$updates" "$css_color"
else
    printf '{"text": "0", "alt": "0", "tooltip": "No updates available", "class": "green"}'
fi
