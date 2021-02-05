#!/bin/sh

mv init.sql /init.sql
mv my.cnf /etc/my.cnf

mkdir -p /run/mysqld

mysql_install_db
mysqld &

MYSQLD_IS_UP=0
while [ $MYSQLD_IS_UP == 0 ]
do
	sleep 5
	ps aux | grep -v "grep" | grep "mysqld"
	if [ $? == 0 ]
	then
		MYSQLD_IS_UP=1
		mysql --password=password wordpress < wordpress.sql
	fi
done

pkill mysqld

mysqld