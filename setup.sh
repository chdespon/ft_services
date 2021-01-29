#!/bin/sh


if [ $(minikube status | grep -c Running) != 3 ]
then
minikube start --driver=docker
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl apply -f srcs/scripts/metallb.yaml
fi
sh srcs/scripts/delete_services.sh


# docker kill $(docker ps -q)

# sudo groupadd docker

# sudo usermod -aG docker $USER


# --cpus=2 --memory=2200MB --extra-config=apiserver.service-node-port-range=1-35000

eval $(minikube -p minikube docker-env)

sh srcs/scripts/build_containers.sh

sh srcs/scripts/apply_yaml.sh

minikube dashboard