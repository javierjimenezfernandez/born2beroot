# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    monitoring.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javjimen <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/02 16:09:10 by javjimen          #+#    #+#              #
#    Updated: 2024/02/02 20:15:06 by javjimen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# ARCHITECTURE
arch=$(uname -a)

# PHYSICAL CPUs
ph_cpu_count=$(grep "physical id" /proc/cpuinfo | wc -l)

# VIRTUAL CPUs
v_cpu_count=$(grep "processor" /proc/cpuinfo | wc -l)

# RAM MEMORY
ram_total=$(free --mega | awk '$1 == "Mem:" {print $2}')
ram_use=$(free --mega | awk '$1 == "Mem:" {print $3}')
ram_percent=$(free --mega | awk '$1 == "Mem:" {printf("%.2f", $3/$2*100)}')

# DISK MEMORY
disk_total=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_t += $2} END {printf("%.1f", disk_t/1024)}')
disk_use=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_u += $3} END {print disk_u}')
disk_percent=$(df -m | grep "/dev/" | grep -v "/boot" | awk '{disk_u += $3} {disk_t+= $2} END {printf("%d", disk_u/disk_t*100)}')

# CPU LOAD
cpu_idle=$(vmstat 1 2 | tail -1 | awk '{print $15}')
cpu_used=$(expr 100 - $cpu_idle)
cpu_load=$(printf "%.1f" $cpu_used)

# LAST BOOT
lb=$(who -b | awk '$1 == "system" {print $3 " " $4}')

# LVM USE
lvm_used=$(if [ $(lsblk | grep "lvm" | wc -l) -gt 0 ]; then echo yes; else echo no; fi)

# TCP CONNEXIONS
tcp_count=$(ss -ta | grep ESTAB | wc -l)

# USER LOG
user_count=$(users | wc -w)

# NETWORK
ip=$(hostname -I)
mac=$(ip link | grep "link/ether" | awk '{print $2}')

# SUDO
sudo_count=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

wall "	#Architecture: $arch
	#CPU physical : $ph_cpu_count
	#vCPU : $v_cpu_count
	#Memory Usage: $ram_use/${ram_total}MB ($ram_percent%)
	#Disk Usage: $disk_use/${disk_total}Gb ($disk_percent%)
	#CPU load: $cpu_load%
	#Last boot: $lb
	#LVM use: $lvm_used
	#TCP Connections : $tcp_count ESTABLISHED
	#User log: $user_count
	#Network: IP $ip ($mac)
	#Sudo : $sudo_count cmd"
