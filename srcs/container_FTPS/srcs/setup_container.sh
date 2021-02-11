#!/bin/sh

adduser -D "admin"
echo "admin:admin" | chpasswd

cd pure-ftpd
./configure
make install-strip

pure-ftpd -p 1024:1024 -P 172.17.0.2