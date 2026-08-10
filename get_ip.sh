#!/usr/bin/env bash

cd /home/segfahlt/fajardo_ip

IP=$(curl -fsS https://api.ipify.org)

if [[ -z "$IP" ]]; then
    exit 1
fi

HOST=$(hostname)
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "hostname:$HOST Date:$DATE  IP: $IP" >> linux_ip

git add .
git commit -m "setting IP on $DATE"
git push

