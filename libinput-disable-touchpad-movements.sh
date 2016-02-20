#!/bin/bash

mkdir tmp-libinput
cd tmp-libinput
apt-get source libinput10
cd libinput-1.?.?
cp ../../evdev-mt-touchpad-disable-move.patch debian/patches/
echo "evdev-mt-touchpad-disable-move.patch" >> debian/patches/series
dpkg-buildpackage -d
cd ..
sudo dpkg -i *.deb

