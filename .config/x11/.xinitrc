#!/bin/sh

# exec startx &
exec xcompmgr &

# Fix mouse speed
xinput --set-prop 8 'Coordinate Transformation Matrix' .6 0 0 0 .6 0 0 0 2

# Autolock after set amount of time, autosleep after more time
xautolock -time 5 -locker slock -killtime 15 -killer "systemctl suspend" &

# Auto-set connected display
#xrandr --output HDMI-0 --left-of DP-0

# (Replaced by xwallpaper): [ -f ~/.config/.fehbg ] && sh ~/.config/.fehbg &
xwallpaper --zoom ~/.local/share/bg &

exec dwm
