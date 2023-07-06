#/bin/bash

cp attach-usb-devices plug-usb unplug-usb /usr/bin
chmod +x /usr/bin/attach-usb-devices /usr/bin/plug-usb /usr/bin/unplug-usb

cp attach-usb-devices.service /etc/systemd/system
systemctl enable attach-usb-devices

# You can try running systemctl start attach-usb-devices but it'll fail to attach any VMs that are already running.