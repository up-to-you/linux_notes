Setting up EAP wifi 802-1x from command line
----

Prerequisite:
> - NetworkManager-wifi plugin

NMCLI commands:
```bash
nmcli device status
nmcli radio wifi <on|off>
nmcli device wifi rescan
nmcli device wifi list
```

```bash
sudo nmcli connection add \
 type wifi con-name "MySSID" ifname wlan0 ssid "MySSID" -- \
 wifi-sec.key-mgmt wpa-eap 802-1x.eap peap \
 802-1x.phase2-auth mschapv2 802-1x.identity "username"
```
