## Install packets

```sh
$ sudo apt remove xserver-xorg-input-synaptics-hwe-16.04
$ sudo apt install xserver-xorg-input-libinput-hwe-16.04
```

## Determine device id and its options 
```sh 
$ xinput list
$ xinput list-props 13
```

## Test your settings 
```sh
$ xinput --set-prop 13 'libinput Accel Speed' 0.7
```

## Make them permanent 
```sh
# file /usr/share/X11/xorg.conf.d/40-libinput.conf
# touchpad section. Right before EndSection
        Option "Tapping" "true"
        Option "AccelSpeed" "0.9"
```
