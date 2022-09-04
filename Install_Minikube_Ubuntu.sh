#!/bin/bash

echo "========================================================================================"
echo "============== Welcome in Minikune installation under Ubuntu OS based Docker ==========="
echo "========================================================================================"
# Get Minikube repos 
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sleep 5
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube
Sleep 5
## install kubctl repos
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sleep 5
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
## check kubeclt installtion status 
kubectl version -o json
##### need install Docker firste "systemctl status docker or /etc/init.d/docker stauts"
minikube start --vm-driver=docker --force
echo "--vm-driver to use one containers provider if you don't have use --vm-driver=none"
## check minikube status
minikube status
kubectl get all 
