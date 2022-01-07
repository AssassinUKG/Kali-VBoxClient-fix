# Kali VBoxClient fix

## Issue: 

Sometimes on Kali linux while working (virtualbox), the left side of my screen stops responding to mouse clicks.  
This seems to be due to vvirtualbox draganddrop process becoming stuck. 
Resetting the PID and starting VBoxClient will fix the issue. 

## Fix

I wrote this script to help automate that process.

Script: [resetVbox.sh](/resetVBox.sh)

## Usage

- Download and run
```
wget https://raw.githubusercontent.com/AssassinUKG/Kali-VBoxClient-fix/main/resetVBox.sh && chmod +x resetVBox.sh 
```

## Manual 

```
ps aux www | grep VBoxClient
# Get PIDS, then Kill one by one

kill -9 999

# Now restart Vbox draganddrop
VBoxClient --draganddrop
```
