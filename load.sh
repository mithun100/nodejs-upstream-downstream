#!/bin/bash
while :
do
    echo "======================================================================================"
    echo "Invoking auto-instrumented upstream-mithun application in K8s on port 80!!!"
    STARTTIME=$(date +"%Y-%m-%d %H:%M:%S:%3N")
    echo "Sent request at: $STARTTIME"
    curl http://LoadBalancerIp:80/
    ENDTIME=$(date +"%Y-%m-%d %H:%M:%S:%3N")
    echo
    echo "Received response at: $ENDTIME"
    echo "Sleeping for 5 secs..."
    sleep 5
done

