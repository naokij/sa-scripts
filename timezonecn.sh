#!/bin/bash
echo "ZONE=\"Asia/Shanghai\"">/etc/sysconfig/clock
echo y|cp  /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
yum -y install ntp
chkconfig ntpd on
ntpdate pool.ntp.org
/etc/init.d/ntpd start
