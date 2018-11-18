sudo nmcli connection add \
 type wifi con-name "MySSID" ifname wlan0 ssid "MySSID" -- \
 wifi-sec.key-mgmt wpa-eap 802-1x.eap peap \
 802-1x.phase2-auth mschapv2 802-1x.identity "username"
