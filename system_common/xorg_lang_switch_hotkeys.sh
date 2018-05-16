# works for Ubuntu 18.04
# patched xorg for fix of language source switch compatability bug like alt/shift, ctrl/shift etc.
sudo add-apt-repository ppa:nrbrtx/xorg-hotkeys
sudo apt update && sudo apt upgrade

sudo apt remove xserver-xorg && sudo apt install xserver-xorg
sudo dpkg-reconfigure xserver-xorg
