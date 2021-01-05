# actually, the values lower than min works in some apps (need check, catalina 10.15.7)
sudo defaults write NSGlobalDomain KeyRepeat -float 0.7
defaults write -g KeyRepeat -float 0.7
defaults write -g InitialKeyRepeat -int 9
