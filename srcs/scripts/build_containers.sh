#!/bin/sh

docker build ./srcs/container_wordpress/ -t wordpress
docker build ./srcs/container_nginx/ -t nginx
docker build ./srcs/container_pma/ -t phpmyadmin
docker build ./srcs/container_mysql/ -t mysql