sudo modprobe usbip-core
sudo modprobe vhci-hcd

# usbip list -r 192.168.1.82
# usbip attach -r 192.168.1.82 -b 1-1.2
# usbip port

sudo usbip list -r 192.168.1.82 | grep -Po "(.*-.*):" | cut -d: -f1 | xargs -n1 sudo usbip attach -r 192.168.1.82 -b 

