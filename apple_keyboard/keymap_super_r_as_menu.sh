# dump current keymap
xmodmap -pke > ~/keymap_table_old

# edit keymap
code /usr/share/X11/xkb/symbols/pc

# under 'xkb_symbols "pc105" {'
# swap key mapping for next entries (DON'T REMOVE ENTRIES!!!)
# 
#   key <RWIN> {	[ Super_R  		]	};
#   key <MENU> {	[ Menu    		]	};
#   
#   to ... 
#
#   key <RWIN> {	[ Menu  		]	};
#   key <MENU> {	[ Super_R		]	};
#

# save


# clear xkb cache
sudo rm -rf /var/lib/xkb/*

sudo reboot
