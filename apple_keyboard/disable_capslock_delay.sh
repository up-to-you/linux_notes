gcc -o disable-capslock-delay disable-capslock-delay.c

HIDDEVICE=$(dmesg | grep Apple | grep Keyboard | grep input0 | tail -1 | sed -e 's/.*hidraw\([[:digit:]]\+\).*/\/dev\/hidraw\1/')

sudo ./disable-capslock-delay $HIDDEVICE

sudo mv disable-capslock-delay /etc/

sudo nano /etc/rc.local

###################################################################################
#!/bin/sh -e

#swap super and left_alt
echo 1 > /sys/module/hid_apple/parameters/swap_opt_cmd
#fix function key behavior
echo 2 > /sys/module/hid_apple/parameters/fnmode
#tilde key fix
echo 0 > /sys/module/hid_apple/parameters/iso_layout

HIDDEVICE=$(dmesg | grep Apple | grep Keyboard | grep input0 | tail -1 | sed -e 's/.*hidraw\([[:digit:]]\+\).*/\/dev\/hidraw\1/')
./disable-capslock-delay $HIDDEVICE
###################################################################################
