#!/bin/bash
yum install ftp://rpmfind.net/linux/epel/5/x86_64/cciss_vol_status-1.10-1.el5.x86_64.rpm
cd /usr/local/bin
curl -O https://raw.github.com/naokij/sa-scripts/master/cciss_monitor.sh
echo "\n*/10 * * * * /usr/local/bin/cciss_monitor.sh">>/tmp/cron
crontab /tmp/cron