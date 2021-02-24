#! /bin/sh

cp	nginx.conf /etc/nginx/

mkdir /run/nginx

/usr/sbin/php-fpm7

#Installing and configuring WordPress

mkdir -p /usr/share/webapps/
cd /usr/share/webapps/
wget http://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
rm latest.tar.gz
chmod -R 777 /usr/share/webapps/
ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress
cd
mv /root/wp-config.php /var/www/localhost/htdocs/wordpress

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