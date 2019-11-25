sudo nano /etc/modprobe.d/blacklist-graphics.conf

blacklist nouveau
blacklist lbm-nouveau
options nouveau modeset=0
alias nouveau off
alias lbm-nouveau off

sudo update-initramfs -u
