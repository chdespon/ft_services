FROM		alpine:latest

RUN			apk update && apk add	build-base \
									openssl

COPY		srcs ./root/

WORKDIR		/root/

RUN			wget https://download.pureftpd.org/pub/pure-ftpd/releases/pure-ftpd-1.0.49.tar.gz; \
			tar zxvf pure-ftpd-1.0.49.tar.gz; \
			rm pure-ftpd-1.0.49.tar.gz; \
			mv pure-ftpd-1.0.49 pure-ftpd

EXPOSE		21 1024

ENTRYPOINT	["sh", "setup_container.sh"]