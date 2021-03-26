#!/usr/bin/env bash

# Set resolution for hdm1.
xrandr --output HDMI1 --mode 1920x1080
# Set monitor HDMI1 to left of main monitor.
xrandr --output eDP1 --auto --output HDMI1 --left-of eDP1
