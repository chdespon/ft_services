#!/bin/sh

mkdir /etc/pure-ftpd
mkdir /etc/pure-ftpd/conf
echo "2" > /etc/pure-ftpd/conf/TLS

mkdir -p /etc/ssl/private

openssl req -x509 -nodes \
-subj '/C=FR/ST=PARIS/L=PARIS/O=42/CN=localhost' \
-days 365 -newkey rsa:2048 \
-keyout /etc/ssl/private/pure-ftpd.pem \
-out /etc/ssl/private/pure-ftpd.pem

openssl dhparam -out /etc/ssl/private/pure-ftpd-dhparams.pem 2048

chmod 600 /etc/ssl/private/*.pem

adduser -D "admin"
echo "admin:admin" | chpasswd

pure-ftpd -j -Y 2 -p 1024:1024 -P 172.17.0.2 &

tail -f /dev/null