#!/bin/bash

# Get the current volume and mute status
volume=$(pamixer --get-volume)
muted=$(pamixer --get-mute)

# Check if the volume is muted
if [ "$muted" = "true" ]; then
    echo "  Muted"
else
    # Determine the icon based on the volume level
    if [ "$volume" -ge 66 ]; then
        echo "  $volume%"
    elif [ "$volume" -ge 33 ]; then
        echo "  $volume%"
    else
        echo "  $volume%"
    fi
fi
