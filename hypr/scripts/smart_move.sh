#!/usr/bin/env bash

# Usage: ./smart_move.sh <workspace_id>
# Example: ./smart_move.sh 1
# Example: ./smart_move.sh +1

TARGET="$1"

# Get the floating status of the active window
IS_FLOATING=$(hyprctl activewindow -j | jq -r '.floating')

if [[ "$IS_FLOATING" == "true" ]]; then
    # Window is Floating -> Use standard move
    hyprctl dispatch movetoworkspace "$TARGET"
else
    # Window is Tiled (Scrolling) -> Use column move
    hyprctl dispatch layoutmsg movecoltoworkspace "$TARGET"
fi
