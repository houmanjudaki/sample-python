#!/bin/bash
time=$(date +%H) #show time from 1 to 11 p.m and Putting in the time variable.

if [ $time -eq 16 ]; # at 16 pm service unreachable ,It is not visible from the outside
then
 iptables -t raw -R PREROUTING 2 -p tcp --dport 80 -j DROP #access organ network to access program
fi

if [ $time -eq 8 ]
then
 iptables -t raw -R PREROUTING 2 -p tcp --dport 80 -j ACCEPT
fi
