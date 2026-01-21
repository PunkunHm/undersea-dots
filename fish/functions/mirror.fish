# -vs waylandsink: Use Wayland window
# -avdec: Use software decoding (safest/most stable)
# -fs: Start in fullscreen (optional)
# -p tells it to start allocating the default Apple ports, which we assigned on firewall
function mirror --wraps='uxplay -p -vs waylandsink -avdec' --description 'alias mirror uxplay -p -vs waylandsink -avdec'
    uxplay -p -vs waylandsink -avdec $argv
end
