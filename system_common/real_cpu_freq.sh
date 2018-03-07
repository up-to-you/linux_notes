# in case of bugs in such tools as : lscpu, /proc/cpuinfo etc.
watch -n 1 'for i in $(seq 0 7); do cat /sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq; done;'
