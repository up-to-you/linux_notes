watch -n 1 "nvidia-smi && printf '\n\nCPU\n\n' && (top -bn1 | grep python3) && printf '\n\nRAM\n\n' && free -mh && printf '\n\nDISK\n\n' && df -h | grep /dev/sda2"
