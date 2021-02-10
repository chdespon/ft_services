FROM		alpine:latest

RUN			apk update && apk add	build-base

COPY		srcs ./root/

WORKDIR		/root/

EXPOSE		21 1024

ENTRYPOINT	["sh", "setup_container.sh"]