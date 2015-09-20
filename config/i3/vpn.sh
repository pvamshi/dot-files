#!/bin/bash
RUN='echo -n 'Optimus@005' | sudo openconnect -u vamshik --authgroup='anyconnect_profile' --pid-file='/var/run/vpn.pid' -b -q  https://sslvpn.kareo.com'
PID=`cat /var/run/vpn.pid`
if [ $? -eq 0 ];then
    sudo pkill openconnect
    if [ $? -ne 0 ];then
        eval $RUN
    fi
else
    eval $RUN
fi
