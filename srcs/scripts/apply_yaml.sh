#!/bin/sh

kubectl apply -f srcs/container_wordpress/wordpress.yaml
kubectl apply -f srcs/container_nginx/nginx.yaml
kubectl apply -f srcs/container_pma/pma.yaml
kubectl apply -f srcs/container_mysql/mysql.yaml
kubectl apply -f srcs/container_FTPS/FTPS.yaml
kubectl apply -f srcs/container_grafana/grafana.yaml
kubectl apply -f srcs/container_influxdb/influxdb.yaml
kubectl apply -f srcs/container_telegraf/telegraf.yaml