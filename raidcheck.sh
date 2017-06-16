#/bin/bash
/usr/sbin/hpacucli ctrl all show status>/tmp/raidcheck
/usr/sbin/hpacucli ctrl all show config>>/tmp/raidcheck
cat /tmp/raidcheck|mail -s `hostname -s` hpraidcheck@notify.emagineconcept.com
rm /tmp/raidcheck
