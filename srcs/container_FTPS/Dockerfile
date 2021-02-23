FROM		alpine:latest

RUN			apk update && apk add	build-base \
									openssl \
									openssl-dev

COPY		srcs ./root/

WORKDIR		/root/

RUN			apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted --no-cache

EXPOSE		21 1024

ENTRYPOINT	["sh", "setup_container.sh"]