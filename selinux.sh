#!/bin/bash
echo 0 >/selinux/enforce
FILE=/etc/sysconfig/selinux

echo "disabling SELinux"
echo "making backup to /tmp/"
cp $FILE /tmp

cat << EOF > $FILE
# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
# enforcing - SELinux security policy is enforced.
# permissive - SELinux prints warnings instead of enforcing.
# disabled - SELinux is fully disabled.
SELINUX=disabled
# SELINUXTYPE= type of policy in use. Possible values are:
# targeted - Only targeted network daemons are protected.
# strict - Full SELinux protection.
SELINUXTYPE=targeted
EOF

echo "done!"

