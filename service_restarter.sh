#!/bin/bash

# 1. Check if the argument is empty
if [ -z "$1" ]; then
 echo "Usage: $0 <service>"
 exit 1
fi

# 2. Check if service is active

 if systemctl is-active "$1" &>/dev/null; then
   echo "The service ${1} is already running..."
 else
   
# 3. If it's down, notify user and start it
       echo "The service ${1} is down! Starting it now...."
    systemctl start "$1"

# 4. Optional: Check if start actually worked
  if [ $? -eq 0 ]; then
       echo "Successfully started ${1}."
else
       echo "Failed to start ${1}. Check logs."
       exit 2
  fi

fi




  
 


