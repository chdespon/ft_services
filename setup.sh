#!/bin/shcd

minikube start --driver=docker --cpus=2 --memory=2200MB --extra-config=apiserver.service-node-port-range=1-35000

kubectl version

kubectl cluster-info

kubectl get nodes

kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
# On first install only
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"