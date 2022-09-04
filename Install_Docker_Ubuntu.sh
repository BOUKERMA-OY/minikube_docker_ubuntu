#!/bin/bash

echo "==========================================================================="
echo "============== Welcome in Docker installation under Ubuntu OS ==========="
echo "==========================================================================="

#################### docker installation
echo "============Uninstall old versions========================="
sudo apt-get remove docker docker-engine docker.io containerd runc
sleep 5
echo "============Installation methods========================="
sudo apt-get update
sleep 5
sudo apt-get install ca-certificates curl gnupg lsb-release
sleep 5
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sleep 5
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "======================Install Docker Engine============================"
sleep 5
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sleep 5
sudo groupadd docker
sleep 5
sudo systemctl start docker; sudo /etc/init.d/docker start --force
echo "============Check doker installation========================="
sudo docker run hello-world
sleep 5
echo "Docker was installed with Success"
echo "For any installation Error please to check in https://www.docker.com/."


