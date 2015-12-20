#!/bin/sh

# Original script by htorque from http://askubuntu.com/a/37841

echo 250 | sudo tee /sys/devices/platform/i8042/serio1/serio2/sensitivity
echo 250 | sudo tee /sys/devices/platform/i8042/serio1/serio2/speed
sudo cp trackpoint.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
sudo udevadm trigger

