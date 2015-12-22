#!/bin/sh

# Original script by htorque from http://askubuntu.com/a/37841

echo 255 | sudo tee /sys/devices/platform/i8042/serio1/serio2/sensitivity
echo 255 | sudo tee /sys/devices/platform/i8042/serio1/serio2/speed

sudo cp trackpoint.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules
sudo udevadm trigger
echo "Run the following command to check if the settings are accepted:"
echo "sudo udevadm test /sys/devices/platform/i8042/serio1/serio2"

