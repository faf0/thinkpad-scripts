#!/bin/bash

# Source: https://mako.cc/copyrighteous/installing-gnulinux-on-an-2014-lenovo-thinkpad-x1-carbon
# obtain TrackPoint ID from xinput list
TP_ID=$(xinput list | grep TrackPoint | cut -f 2 | grep -Eo '[0-9]{1,}')
if [ -n "$TP_ID" ]; then
        # obtain properties from xinput list-props "$TP_ID"
        AVS_ID=$(xinput list-props "$TP_ID" | grep 'Accel Velocity Scaling' | cut -f 2 | grep -Eo '[0-9]{1,}')
        xinput set-prop "$TP_ID" "$AVS_ID" 4 # scale accel velocity
        ACD_ID=$(xinput list-props "$TP_ID" | grep 'Accel Constant Deceleration' | cut -f 2 | grep -Eo '[0-9]{1,}')
        xinput set-prop "$TP_ID" "$ACD_ID" 0.7 # constant deceleration
        xset m 2 0 # set acceleration to double speed at 0 offset
fi

