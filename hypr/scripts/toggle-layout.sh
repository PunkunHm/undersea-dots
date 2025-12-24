#!/bin/bash

# --- CONFIGURATION ---
# Adjust this base path if your config is strictly in ~/.config/hypr
CONF_DIR="$HOME/.config/hypr/conf"
LAYOUTS_DIR="$CONF_DIR/layouts"
LINK_TARGET="$CONF_DIR/binds-active.conf"

# --- LOGIC ---

# Get current layout
CURRENT_LAYOUT=$(hyprctl getoption general:layout | grep -oP 'str: \K\w+')

if [ "$CURRENT_LAYOUT" = "dwindle" ]; then
    # === SWITCH TO SCROLLING ===
    # Point the symlink to the Scrolling keybinds
    ln -sf "$LAYOUTS_DIR/scrolling.conf" "$LINK_TARGET"
    # Notify
    notify-send -h string:x-canonical-private-synchronous:layout_switch \
        -t 1500 "Layout" "Timeline (Scrolling)"
else
    # === SWITCH TO DWINDLE ===
    # Point the symlink to the Dwindle keybinds
    ln -sf "$LAYOUTS_DIR/dwindle.conf" "$LINK_TARGET"
    # Notify
    notify-send -h string:x-canonical-private-synchronous:layout_switch \
        -t 1500 "Layout" "Grid (Dwindle)"
fi

# Reload Hyprland
hyprctl reload
