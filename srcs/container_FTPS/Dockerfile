FROM		alpine:latest

RUN			apk update && add vsftpd

COPY		srcs ./root/

WORKDIR		/root/

EXPOSE		21

ENTRYPOINT	["sh", "setup_FTPS.sh"]