#!/bin/sh

wget https://download.pureftpd.org/pub/pure-ftpd/releases/pure-ftpd-1.0.49.tar.gz
tar zxvf pure-ftpd-1.0.49.tar.gz
rm pure-ftpd-1.0.49.tar.gz
mv pure-ftpd-1.0.49 pure-ftpd

adduser -D "admin"
echo "admin:admin" | chpasswd

cd pure-ftpd
./configure
make install-strip

pure-ftpd -p 1024:1024 -P 172.17.0.2