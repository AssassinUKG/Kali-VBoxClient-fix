#!/bin/bash
# Created by: Assassinukg 07/01/2022 
# Issue: VirtualBox on Kali, Left side of screen dies to mouse clicks. 
# This script kills and restarts the process. 

echo "Restarting VBocVlient --draganddrop process (screen hang issue)"
echo ""

PIDS=$(ps aux www | grep VBoxClient | grep draganddrop | cut -d ' ' -f 9 | tr  '\n' ' ')
myvar=("$PIDS")

IFS=" " read -a myarr <<< $myvar

for t in "${myarr[@]}"; do
        echo "Killing VBoxProcess PID: $t"
        kill -9 "$t"
done

echo ""
echo "Restarting VBoxClient Services"
sleep 1
VBoxClient --draganddrop
