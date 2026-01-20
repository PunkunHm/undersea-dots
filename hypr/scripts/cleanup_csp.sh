#!/bin/bash

# Find windows that are:
# 1. Class = clipstudiopaint.exe
# 2. Title is empty
# 3. Size is exactly 1280x720 (The junk windows)

hyprctl clients -j | jq -r '.[] | select(.class=="clipstudiopaint.exe" and .title=="" and .size==[1280, 720]) | .address' | while read -r addr; do
    hyprctl dispatch movetoworkspacesilent 4 address:$addr
done

# windowrule = opacity 0 override, no_focus on, no_blur on, no_shadow on, match:title ^(PLACEHOLDER)$
