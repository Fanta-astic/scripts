#!/bin/bash

USER=username
PASS=password
KEX=diffie-hellman-group1-sha1 #testing for some old devices
CIPHER=aes256-cbc #testing for some old devices

hosts=("sw1.cwalops.ca" "sw2.cwalops.ca" "sw3.cwalops.ca" "sw31.cwalops.ca" "sw32.cwalops.ca" "r1.cwalops.ca" "r2.cwalops.ca" "r3.cwalops.ca")

for host in "${hosts[@]}"
do
	konsole --separate -e "sshpass -p $PASS ssh -o KexAlgorithms=$KEX -c $CIPHER $USER@$host" &

done

