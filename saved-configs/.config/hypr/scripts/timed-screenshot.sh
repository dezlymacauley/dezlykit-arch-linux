#!/bin/bash

# Countdown duration in seconds
DELAY=5

# Show countdown notifications
for i in $(seq $DELAY -1 1); do
    notify-send -t 1000 "Screenshot in ${i}..." -u normal
    sleep 1
done

# Take the screenshot
hyprshot -m output --freeze -o $HOME/workspace/obs-studio/

# Optional: notify that photo was taken
notify-send "Screenshot taken!" -u low
