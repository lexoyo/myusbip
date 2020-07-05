
# apt-get install usbip
sudo modprobe vhci-hcd
sudo usbipd -D
# usbip list -l
# usbip bind -b 1-1.2

# bind all devices (1-1.1 is the usb system)
sudo usbip list -l | grep -v "1-1.1" | grep -Po "busid (.*)" | cut '-d ' -f2 | xargs -n1 sudo usbip bind -b

