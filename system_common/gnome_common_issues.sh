# disable default ctrl + alt + arrow gnome shortcuts (workspaces switcher) for navigation in other apps
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"

# patched xorg for keymap <-> source switcher keys combinations:
# https://launchpad.net/~nrbrtx/+archive/ubuntu/xorg-hotkeys
# e.g. gnome-tweak-tools : switch source - alt + shift
sudo add-apt-repository ppa:nrbrtx/xorg-hotkeys

gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s','Control_R']"
