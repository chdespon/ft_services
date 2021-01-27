#!/bin/sh

docker build ./srcs/container_wordpress/ -t wordpress
docker build ./srcs/container_nginx/ -t nginx