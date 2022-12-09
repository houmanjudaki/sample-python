#!/bin/bash
iptables -t raw -I PREROUTING -p tcp -s 192.168.10.0/24 -j ACCEPT
iptables -t raw -A PREROUTING -p tcp --dport 80 -j ACCEPT

echo iptable rule added successful (:
