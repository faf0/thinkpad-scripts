# About

Scripts for Ubuntu 14.04 (or similar distributions) on Lenovo ThinkPads (tested
on X1 Carbon 2nd Generation).

# Script Descriptions

## Touchpad Scripts

The touchpad scripts allow for emulating three trackpad buttons which do not
exist on many 2014 series ThinkPads (see
[http://askubuntu.com/q/443642](http://askubuntu.com/q/443642) for pictures).
Moreover, the touchpad scripts disable movements for part of the touchpad (only
possible with `trackpad-fix.sh`) or the complete touchpad (possible with
`trackpad-fix.sh` or `libinput-disable-touchpad-movements.sh`) to prevent
accidental pointer movements. Disabling the touchpad mouse pointer is useful if
the TrackPoint is supposed to be the only mouse pointer device.

- On Ubuntu 14.04, use `trackpad-fix.sh`.
- On Ubuntu 15.10, please install `xserver-xorg-input-libinput` and then
execute `libinput-disable-touchpad-movements.sh`. Do not execute
`trackpad-fix.sh`.

## TrackPoint Acceleration

`trackpoint-fast.sh`: This script speeds up slow TrackPoints.

