# TourBox Elite Profile
# Profile: default
# Exported: 2026-01-08 22:06:41

[profile]
name = default

[mappings]
c1 = KEY_LEFTALT+KEY_LEFT
c2 = KEY_LEFTALT+KEY_RIGHT
knob_ccw = KEY_VOLUMEDOWN
knob_click = KEY_PLAYPAUSE
knob_cw = KEY_VOLUMEUP
scroll_click = KEY_HOME
scroll_down = REL_WHEEL:-1
scroll_up = REL_WHEEL:1
short = modifier
side = KEY_LEFTMETA
tall = modifier
top = modifier
tour = KEY_LEFTCTRL+KEY_TAB
short.on_release_disabled = true
tall.on_release_disabled = true

[modifiers]
short = modifier
short.base_action = KEY_SPACE
short.tall = KEY_LEFTSHIFT+KEY_LEFTMETA
tall = modifier
tall.base_action = KEY_LEFTMETA
tall.short = KEY_LEFTSHIFT+KEY_LEFTMETA
top = modifier
top.base_action = KEY_PLAYPAUSE
top.c1 = KEY_PREVIOUSSONG
top.c2 = KEY_NEXTSONG

[haptic]
haptic_speed.knob = slow
