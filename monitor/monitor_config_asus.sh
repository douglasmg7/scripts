#!/usr/bin/env bash

# Set resolution for hdm1.
# Set monitor HDMI1 to left of main monitor.
# xrandr --output eDP1 --auto --output HDMI1 --left-of eDP1
# xrandr --output eDP1 --auto --output HDMI1 --right-of eDP1
# xrandr --output eDP1 --auto --output HDMI1 --above eDP1
# xrandr --output HDMI1 --mode 2560x1080 --rate 60 --left-of eDP1
xrandr --output HDMI1 --auto --left-of eDP1
