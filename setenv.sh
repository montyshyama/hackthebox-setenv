#!/bin/bash

cd /media/sf_htb/vpn_htb;
nohup ./connect.sh > /dev/null 2>&1 & 
sleep 5;
echo "VPN connected!!";
ifconfig tun0 | grep 10.10 > temp.txt;
export lhost=$(tr -s ' ' '\n' < temp.txt | grep 10.10 | sort -u);
echo "tun0 ip(lhost):" $lhost;
cd ../;
