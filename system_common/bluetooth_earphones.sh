sudo apt install --reinstall pulseaudio-module-bluetooth

nano /etc/bluetooth/network.conf
DisableSecurity=true

nano /etc/pulse/default.pa
nano /etc/pulse/system.pa

#.ifexists module-bluetooth-policy.so
#load-module module-bluetooth-policy
#.endif

#.ifexists module-bluetooth-discover.so
#load-module module-bluetooth-discover
#.endif

# ======>>>

load-module module-bluetooth-policy
load-module module-bluetooth-discover
