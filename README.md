This scrip will reboot a series of remote hosts via ssh and expect.

Usage: ./reboot.sh hostname1 hostname2 ipaddress1 ipaddress2

This script required expect to be installed. It will reboot all host unconditionally.  
You can insert a check condition. For instance, replace

send \"reboot\r\"
with 
send \"grep -q -w ro /proc/mounts && (echo Found; sleep 2; reboot)\r\"

to reboot the hosts which has filesystem in read-only mode.