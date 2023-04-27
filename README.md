# bluetooth-drivers-fedora
Automated bluetooth drivers installation and configuration for Fedora Linux.

## superuser privileges required.
This script requires super user privileges as installs the required `BlueZ` packages and then restarts and condigures certain modules.

## run the automated script
Make sure you have `curl` installed in your Linux system and paste the following line into your terminal.
```shell
sudo bash <(curl -fsSL https://raw.githubusercontent.com/kashari/docker-install/main/init.sh) < /dev/tty
```
After this you should have bluetooth modules, up and running and enabled on system startup.

## tested
This has been tested in Fedora 35, 36, 37, 38.
