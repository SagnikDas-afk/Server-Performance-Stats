#!/usr/bin/env bash

echo "*** Total CPU Usage ***"
top -bn1 | grep %Cpu(s)

echo -e "\n*** Total Memory Usage ***"
free -h

echo -e "\n*** Total Disk Usage ***"
df -h --total | grep 'total'

echo -e "\n*** Top 5 Processes by CPU ***"
ps -eo comm,%cpu --sort=-%cpu | head -n 6

echo -e "\n*** Top 5 Processes by MEM ***"
ps -eo comm,%mem --sort=-%mem | head -n 6