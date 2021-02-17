FROM		alpine:latest

RUN			apk update && apk add	telegraf

COPY		srcs ./root/

WORKDIR		/root/

ENTRYPOINT	["sh", "setup_container.sh"]