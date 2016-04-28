# About

Scripts for Ubuntu 14.04 and 16.04 (or similar distributions) on Lenovo ThinkPads (tested
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
- On Ubuntu 15.10/16.04, please install the package
`xserver-xorg-input-libinput` and then execute
`libinput-disable-touchpad-movements.sh`. Do not execute
`trackpad-fix.sh`.
Script `libinput-disable-touchpad-movements.sh` will fetch the sources of libinput, patch them, build a `.deb` package, and install it.
Make sure to have the Ubuntu source repositories enabled.
The script will also install some packages that are needed to build the package from source.
If the script fails due to a missing package dependency, install the dependency, remove the folder `tmp-libinput`, and run `libinput-disable-touchpad-movements.sh` again.

## TrackPoint Acceleration

To accelerate your TrackPoint, consider calling one of the following scripts from `~/.xprofile`.

- `trackpoint-fast.sh`: For Ubuntu 14.04.
- `trackpoint-fast-libinput.sh`: For Ubuntu 15.10/16.04. Please install the
package `xserver-xorg-input-libinput`.

