#!/bin/sh

minikube delete

minikube start --driver=docker --cpus=2 --memory=2200MB --extra-config=apiserver.service-node-port-range=1-35000

kubectl version

kubectl cluster-info

kubectl get nodes

sh srcs/scripts/delete_services.sh

cd srcs/container_wordpress

docker build . -t wordpress
cd ..
cd ..

sh srcs/scripts/apply_yaml.sh