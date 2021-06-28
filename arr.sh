#! /bin/bash


IP1=$(ping -c 1 "google.com" | grep PING | awk -F'(' '{print $2}'| awk -F')' '{print $1}') &> /dev/null

echo $IP1