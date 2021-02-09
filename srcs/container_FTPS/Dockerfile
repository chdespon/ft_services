FROM		alpine:latest

RUN			apk update && add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/

COPY		srcs ./root/

WORKDIR		/root/

EXPOSE		21 1024

ENTRYPOINT	["sh", "setup_FTPS.sh"]