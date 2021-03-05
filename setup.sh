#!/bin/sh

BLUE="\e[1;34m"
GREEN="\e[1;32m"
WHITE="\e[0m"

if [ $(grep "docker" /etc/group | grep -c $USER ) = 0 ]
then
	echo ${BLUE}"Password needed for restart to adding user to docker group"${WHITE}
	sudo usermod -aG docker $USER
	sudo shutdown -r now
	sleep 30
fi

#Install requirements for pure-ftpd.
echo ${BLUE}"==Installing lftp.=="${WHITE}
echo "user42" | sudo -S apt install lftp
echo "user42" | sudo chmod 777 /etc/lftp.conf
grep "set ssl:verify-certificate no" /etc/lftp.conf
if [ $? -ne 0 ]
then
	echo "set ssl:verify-certificate no" >> /etc/lftp.conf
fi
echo ${GREEN}"==Done==\n\n"${WHITE}

if [ $(minikube status | grep -c Running) != 3 ]
then
	echo ${BLUE}"==Starting Minikube=="${WHITE}
	minikube start --driver=docker
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/namespace.yaml
	kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.3/manifests/metallb.yaml
	kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
	kubectl apply -f srcs/metallb/metallb.yaml
	echo ${GREEN}"==Done==\n\n"${WHITE}
fi

echo ${BLUE}"==Deleting Minikube instances=="${WHITE}
sh srcs/scripts/delete_services.sh
echo ${GREEN}"==Done==\n\n"${WHITE}

#Set the environment variable to use local Docker (allows you to re-use the Docker daemon inside the Minikube instance).

eval $(minikube -p minikube docker-env)

echo ${BLUE}"==Build docker container=="${WHITE}
echo ${WHITE}"You can check logs in logs directory"${WHITE}
sh srcs/scripts/build_containers.sh
echo ${GREEN}"==Done==\n\n"${WHITE}

echo ${BLUE}"==Creating Minikube instaces=="${WHITE}
sh srcs/scripts/apply_yaml.sh
echo ${GREEN}"==Done==\n\n"${WHITE}

echo ${BLUE}"==Starting dashboard=="${WHITE}
minikube dashboard