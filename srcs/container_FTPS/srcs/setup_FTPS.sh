#!/bin/sh

adduser -D "admin"
echo "admin:admin" | chpasswd

pure-ftpd -p 1024:1024 -P 172.17.0.2