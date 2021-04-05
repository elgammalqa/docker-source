#!/bin/bash
##Adding user haseel as the same name and id as user on host machine

USER="haseel"
useradd -m -s /bin/bash $USER
mkdir /home/$USER/public_html/
usermod -u 1001 $USER
groupmod -g 1001 $USER
chown -R 1001:1001 /home/$USER/
sed -i 's/user\ \=\ www-data/user\ \=\ haseel/g' /usr/local/etc/php-fpm.d/www.conf
sed -i 's/group\ \=\ www-data/user\ \=\ haseel/g' /usr/local/etc/php-fpm.d/www.conf
rm -rf /tmp/user.sh
