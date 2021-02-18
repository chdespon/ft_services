#!/bin/sh

adduser -D "admin"
echo "admin:admin" | chpasswd

mkdir -p /etc/ssl/private

openssl dhparam -out /etc/ssl/private/pure-ftpd-dhparams.pem 2048

openssl req -x509 -nodes -newkey rsa:2048 -sha256 -keyout \
  /etc/ssl/private/pure-ftpd.pem \
  -out /etc/ssl/private/pure-ftpd.pem

chmod 600 /etc/ssl/private/*.pem

cd pure-ftpd
./configure --with-tls ...
make install-strip

pure-ftpd -p 1024:1024 -P 172.17.0.2 &

tail -f /dev/null