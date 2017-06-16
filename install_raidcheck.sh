#!/bin/bash
cd /root
yum -y install mailx
curl -O https://raw.githubusercontent.com/naokij/sa-scripts/master/raidcheck.sh
chmod a+x /root/raidcheck.sh
line="0 9 * * * /root/raidcheck.sh"
(crontab -u root -l; echo "$line" ) | crontab -u root -
