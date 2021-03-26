#!/usr/bin/env bash
intern=LVDS1
extern=VGA1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --off --output "$extern" --auto
fi

# Set resolution for hdm1.
xrandr --output HDMI1 --mode 1920x1080
# Set monitor HDMI1 to left of main monitor.
xrandr --output eDP1 --auto --output HDMI1 --left-of eDP1
