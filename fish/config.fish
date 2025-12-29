if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set cursor theme for niri compositor
set -gx XCURSOR_THEME "Bibata-Modern-Ice"
set -gx XCURSOR_SIZE "24"

# Add scripts directory to PATH
fish_add_path $HOME/.config/scripts

# Add Flutter to PATH
fish_add_path $HOME/Dev/flutter/bin

# Set Chrome executable for Flutter web development
set -gx CHROME_EXECUTABLE /usr/bin/google-chrome-stable

# Helix editor alias
alias hx helix

# Claude Code alias
alias cc claude

# Configure sudo askpass helper
set -gx SUDO_ASKPASS $HOME/.askpass.sh

# -vs waylandsink: Use Wayland window
# -avdec: Use software decoding (safest/most stable)
# -fs: Start in fullscreen (optional)
# -p 30000 tells it to start allocating ports at 30000
alias mirror 'uxplay -p 30000 -vs waylandsink -avdec'
