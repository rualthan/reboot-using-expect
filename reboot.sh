#!/bin/bash
for host in $@
do
        expect -c "
                spawn ssh root@$host
                expect \"password: \"
                send \"secret\r\"
                expect \"# \"
                send \"reboot\r\"
                expect \"# \"
                send \"exit\r\"
       "
done