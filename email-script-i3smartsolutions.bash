#!/bin/bash
iptables --policy INPUT DROP
iptables -A OUTPUT -d 0.0.0.0/0 -j ACCEPT
#ALLOW IP
iptables -A INPUT -s 103.214.185.74/29 -j ACCEPT
iptables -A INPUT -s 103.214.185.250/29 -j ACCEPT
iptables -A INPUT -s 103.214.185.254/29-j ACCEPT
iptables -A INPUT -s 125.160.146.19/32 -j ACCEPT
iptables -A INPUT -s 10.2.84.187/32 -j ACCEPT
#Allow to Relay
iptables -A INPUT -s 104.171.119.222/32 -p tcp --dport 25 -j ACCEPT
iptables -A INPUT -s 104.171.119.222/32 -p tcp --dport 465 -j ACCEPT
#Allow Port Incoming Internet
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -p tcp --dport 110 -j ACCEPT
iptables -A INPUT -p tcp --dport 995 -j ACCEPT
iptables -A INPUT -p tcp --dport 143 -j ACCEPT
iptables -A INPUT -p tcp --dport 993 -j ACCEPT
#Allow lo
iptables -A INPUT -i lo -j ACCEPT
#Drop ALL
iptables -A INPUT -j DROP