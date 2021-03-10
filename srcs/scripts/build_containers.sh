#!/bin/sh

docker build ./srcs/container_wordpress/ -t wordpress > ./logs/wordpress_logs.log
docker build ./srcs/container_nginx/ -t nginx > ./logs/nginx_logs.log
docker build ./srcs/container_pma/ -t phpmyadmin > ./logs/pma_logs.log
docker build ./srcs/container_mysql/ -t mysql > ./logs/mysql_logs.log
docker build ./srcs/container_FTPS/ -t ftps > ./logs/ftps_logs.log
docker build ./srcs/container_grafana/ -t grafana > ./logs/grafana_logs.log
docker build ./srcs/container_influxdb/ -t influxdb > ./logs/influxdb_logs.log
docker build ./srcs/container_telegraf/ -t telegraf > ./logs/telegraf_logs.log