#!/bin/sh

sh srcs/scripts/delete_services.sh

# sudo groupadd docker

# sudo usermod -aG docker $USER

minikube delete

minikube start --driver=docker 

# --cpus=2 --memory=2200MB --extra-config=apiserver.service-node-port-range=1-35000

kubectl version

kubectl cluster-info

kubectl get nodes

eval $(minikube docker-env)

sh srcs/scripts/build_containers.sh

sh srcs/scripts/apply_yaml.sh

minikube dashboard