#!/bin/bash

apt install vnstat s-nail -y

chmod +x /root/Network-Traffic/*.sh

crontab -l | { cat; echo "0 9 * * 1 /root/Network-Traffic/vnstat.sh"; } | crontab -
