#!/bin/sh

mkdir -p /run/mysql

mv init.sql /init.sql
mv my.cnf /etc/my.cnf

mysql_install_db --user=root --datadir=/var/lib/mysql

mysqld --init_file=/init.sql

mysql -u root wordpress < wordpress.sql