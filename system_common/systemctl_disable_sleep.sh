# disable sleep
systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target

# enable sleep
systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
