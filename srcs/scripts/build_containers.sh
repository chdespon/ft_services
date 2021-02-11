#!/bin/sh

docker build ./srcs/container_wordpress/ -t wordpress > ~/ft_services/logs/wordpress_logs.log
docker build ./srcs/container_nginx/ -t nginx > ~/ft_services/logs/nginx_logs.log
docker build ./srcs/container_pma/ -t phpmyadmin > ~/ft_services/logs/pma_logs.log
docker build ./srcs/container_mysql/ -t mysql > ~/ft_services/logs/mysql_logs.log
docker build ./srcs/container_FTPS/ -t ftps > ~/ft_services/logs/ftps_logs.log
docker build ./srcs/container_grafana/ -t grafana > ~/ft_services/logs/grafana_logs.log