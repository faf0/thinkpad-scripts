#!/bin/bash

# Source: https://mako.cc/copyrighteous/installing-gnulinux-on-an-2014-lenovo-thinkpad-x1-carbon
# obtain touchpad id from xinput list.
export TP_ID=14
# obtain properties from xinput list-props $TP_ID
xinput set-prop "$TP_ID" 265 40 # quadruple accel velocity scaling
xinput set-prop "$TP_ID" 263 0.5 # halve constant deceleration
xset m 2 0 # set acceleration to double speed at 0 offset

