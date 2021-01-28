#!/bin/sh


if [ $(minikube status | grep -c Running) != 3 ]
then
minikube start --driver=docker
else  
sh srcs/scripts/delete_services.sh
fi

docker kill $(docker ps -q)

# sudo groupadd docker

# sudo usermod -aG docker $USER


# --cpus=2 --memory=2200MB --extra-config=apiserver.service-node-port-range=1-35000

kubectl version

kubectl cluster-info

kubectl get nodes

eval $(minikube -p minikube docker-env)

sh srcs/scripts/build_containers.sh

sh srcs/scripts/apply_yaml.sh

minikube dashboard