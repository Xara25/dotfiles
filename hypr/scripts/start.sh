#!/usr/bin/env bash

# Auth agen
/usr/lib/polkit-kde-authentication-agent-1 &


# applets
nm-applet &
blueman-applet &

# notify
dunst &

# Bar
waybar &

# Notification
exec swayosd-server --show-percentage & 

# Background
swww-daemon &
exec $HOME/.config/hypr/scripts/background.sh &

