#! /bin/sh

cp	nginx.conf /etc/nginx/

mkdir /run/nginx

cd ssl
chmod +x mkcert
./mkcert -install
./mkcert localhost
cd ..

nginx

tail -f /dev/null