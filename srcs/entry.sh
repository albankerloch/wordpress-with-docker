#!/bin/bash
service mysql start
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'alban'@'localhost' IDENTIFIED BY 'haha';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
mysql -u alban -p'haha' wordpress < wordpress.sql
service nginx start
service php7.3-fpm start
sleep infinity
