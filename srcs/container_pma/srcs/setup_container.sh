#! /bin/sh

cp	nginx.conf /etc/nginx/

mkdir /run/nginx

/usr/sbin/php-fpm7

#Installing and configuring PMA

mkdir -p /usr/share/webapps/
cd /usr/share/webapps
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages phpmyadmin
chmod -R 777 /usr/share/webapps/
ln -s /usr/share/webapps/phpmyadmin/ /var/www/localhost/htdocs/phpmyadmin
cd
mv config.inc.php /var/www/localhost/htdocs/phpmyadmin

nginx &

ARE_RUNNING=0
while [ $ARE_RUNNING -eq 0 ]
do
	sleep 5
	ps aux | grep -v "grep" | grep "php-fpm7"
	if [ $? -ne 0 ]
	then
		ARE_RUNNING=1
	fi
	ps aux | grep -v "grep" | grep "nginx"
	if [ $? -ne 0 ]
	then
		ARE_RUNNING=1
	fi
done