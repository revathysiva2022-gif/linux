#!/bin/bash
#
# 1. Print a header for the report
 echo "--- SYSTEM INVENTORY REPORT: $(hostname) ---"
 echo "Generated on: $(date)"
 echo ""

 # 2. CPU and Kernel Info
 echo "--- CPU & KERNEL INFO ---"
 uname -r
 uptime 
 echo ""

 # 3. Network Info
 echo "---NETWORK INFO ---"
 ip -brief addr
 echo""

# 4. Memory Info
 echo "--- MEMORY INFO (MB) ---"
 free -m
 echo ""

# 5. SELinux Status Check
 echo "--- SECURITY STATUS ---"
 if getenforce | grep -i "Enforcing" &>/dev/null; then
     echo "SELinux is: ENFORCING (Secure)"
 else 
	 echo "SELinux is: NOT ENFORCING (Warning!)"
 fi


echo ""
echo "--- REPORT COMPLETE ---"
