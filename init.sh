#!/bin/bash
#
#
# This script replaces the desired config in the /etc/bluetooth/main.conf file.

if [[ "${UID}" -ne 0 ]]
then
    echo 'Please execute this script as root.'
    exit 1
fi

# Install the BLUEZ packages
sudo dnf -y install bluez*

# Enable btbusb
sudo modprobe btusb

sudo systemctl restart bluetooth

awk '{gsub(/#ControllerMode = dual/,"ControllerMode = bredr")}1' /etc/bluetooth/main.conf > temp && mv temp /etc/bluetooth/main.conf

sudo systemctl restart bluetooth

if [[ "${?}" -eq 0 ]]
then
    echo 'All good now bluetooth is a ok.'
else
    echo 'Something went wrong.'
fi

exit 0
