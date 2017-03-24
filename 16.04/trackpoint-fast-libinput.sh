#!/usr/bin/env bash

set -eu
set -o pipefail

# Inspired by: https://mako.cc/copyrighteous/installing-gnulinux-on-an-2014-lenovo-thinkpad-x1-carbon
# obtain TrackPoint ID from xinput list
TP_ID=$(xinput list | grep TrackPoint | cut -f 2 | grep -Eo '[0-9]{1,}')
if [ -n "$TP_ID" ]; then
        # obtain properties from xinput list-props "$TP_ID"
        AS_ID=$(xinput list-props "$TP_ID" | grep 'Accel Speed (' | cut -f 2 | grep -Eo '[0-9]{1,}')
        xinput set-prop "$TP_ID" "$AS_ID" 1 # maximize acceleration
fi

