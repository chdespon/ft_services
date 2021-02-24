FROM		alpine:latest

RUN			apk update

RUN			apk add build-base

RUN			apk add openssl openssl-dev

RUN			apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

COPY		srcs /root

WORKDIR		/root/

EXPOSE		21 1024

ENTRYPOINT	["sh", "setup_container.sh"]