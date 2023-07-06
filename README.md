# XCP-ng USB passthrough tools

A set of command line tools and a service to make setting up passthrough USB devices easier:

- `attach-usb-devices` - script and service to automatically connect USB devices to VMS when XCP-ng boots up
- `plug-usb` - attach a physical USB device to a VM in one command
- `unplug-usb` - remove a physical USB device from a VM in one command

To set up, copy the files onto your server and run `install.sh` to copy everything and set up the service.
You can add any `plug-usb` commands you want to run on boot by modifying `/usr/bin/attach-usb-devices`.

You can also use `plug-usb` directly if you want to attach a new device on demand:

```sh
# You can use xe vusb-list and xe vm-list to figure out the IDs you need
plug-usb <vusb-uuid> <vm-uuid>
```

If you want to unplug a device later, you can use `unplug-usb`:

```sh
unplug-usb <vusb-uuid>
```

You can list all physical USB devices available and get their UUIDs with `xe pusb-list`.