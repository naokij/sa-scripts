#!/bin/bash
#device name for RHEL 5/CentOS 5
DRIVE=/dev/cciss/c0d0
#device name for RHEL 6/CentOS 6
#DRIVE=/dev/cciss/sg0
EMAIL=report@dottogo.net
INFO=`/usr/local/bin/cciss_vol_status -s $DRIVE`
HAS_E=`echo -e $INFO | grep 'fail'`

if [ $HAS_E ]; then
	H = `hostname`
	echo $INFO | mail -s "$H server disk report" '$EMAIL'
	logger -p local7.error $INFO
	exit 1
else
	logger -p local7.info $INFO
	echo "Everything is OK."
fi

echo "Ok"
exit 0