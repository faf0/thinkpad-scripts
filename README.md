# About

Scripts for Ubuntu 14.04 and 16.04 (or similar distributions) on Lenovo ThinkPads (tested
on X1 Carbon 2nd Generation and reported to work on X240).

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

- On Ubuntu 14.04, run `cd 14.04/ && ./trackpad-fix.sh`.
- On Ubuntu 16.04, please install the package
`xserver-xorg-input-libinput` and then execute
`cd 16.04/ && ./libinput-disable-touchpad-movements.sh`.
Script `libinput-disable-touchpad-movements.sh` will fetch the sources of libinput, patch them, build a `.deb` package, and install it.
Make sure to have the Ubuntu source repositories enabled.
The script will also install some packages that are needed to build the package from source.
If the script fails due to a missing package dependency, install the dependency, remove the folder `tmp-libinput`, and run `libinput-disable-touchpad-movements.sh` again.

## TrackPoint Acceleration

To accelerate your TrackPoint, consider calling one of the following scripts from `~/.xprofile`.

- `14.04/trackpoint-fast.sh`: For Ubuntu 14.04.
- `16.04/trackpoint-fast-libinput.sh`: For Ubuntu 16.04. Please install the
package `xserver-xorg-input-libinput`.

# Uninstallation

- Ubuntu 14.04: To replace the patched touchpad driver with the original Ubuntu version, run the following commands:
```bash
sudo apt-get install xserver-xorg-input-synaptics
sudo apt-get install --reinstall xserver-xorg-input-evdev
sudo rm /etc/X11/xorg.conf.d/90-evdev-trackpoint.conf
```
- Ubuntu 16.04: To replace the patched touchpad driver with the original Ubuntu version, run `sudo apt-get install --reinstall libinput10`.
- Ubuntu 14.04 and Ubuntu 16.04: Remove the calls of the TrackPoint acceleration scripts from `~/.xprofile`.

