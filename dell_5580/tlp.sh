sudo nano /etc/default/tlp

# since tlp conflicts/intersects with bbswitch and nvidia-off.service
...
RUNTIME_PM_DRIVER_BLACKLIST="nouveau nvidia"
