#!/bin/bash
##Adding user haseel as the same name and id as user on host machine

USER="haseel"
useradd -m -s /bin/bash $USER
mkdir /home/$USER/public_html/
usermod -u 1001 $USER
groupmod -g 1001 $USER
chown -R 1001:1001 /home/$USER/
rm -rf /tmp/user.sh
