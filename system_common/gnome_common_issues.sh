# disable default ctrl + alt + arrow gnome shortcuts (workspaces switcher) for navigation in other apps
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['']"

# patched xorg for keymap <-> source switcher keys combinations:
# https://launchpad.net/~nrbrtx/+archive/ubuntu/xorg-hotkeys
# e.g. gnome-tweak-tools : switch source - alt + shift
sudo add-apt-repository ppa:nrbrtx/xorg-hotkeys

gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>s','Control_R']"

# remove huge title bar for gnome-terminal
gsettings set org.gnome.Terminal.Legacy.Settings headerbar false

# disable default shortcuts for workspace switching
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['']" &&\
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['']" &&\
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['']" &&\
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['']"


# 20.04 (switching to another keyboard layout using CapsLock)
gsettings set org.gnome.desktop.input-sources xkb-options "['grp:caps_toggle']"
