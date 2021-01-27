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
mv /root/wp-config.php /usr/share/webapps/wordpress/
ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress

nginx -g "daemon off;"