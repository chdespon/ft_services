#! /bin/sh

cp	nginx.conf /etc/nginx/

mkdir /run/nginx

cd ssl
chmod +x mkcert
./mkcert -install
./mkcert localhost
cd ..

nginx &

IS_RUNNING=0
while [ $IS_RUNNING -eq 0 ]
do
	sleep 5
	ps aux | grep -v "grep" | grep "nginx"
	if [ $? -ne 0 ]
	then
		IS_RUNNING=1
	fi
done