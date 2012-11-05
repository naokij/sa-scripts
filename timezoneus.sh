#!/bin/bash
echo "ZONE=\"America/Los_Angeles\"">/etc/sysconfig/clock
echo y|cp  /usr/share/zoneinfo/America/Los_Angeles /etc/localtime
yum -y install ntp
chkconfig ntpd on
ntpdate pool.ntp.org
/etc/init.d/ntpd start
