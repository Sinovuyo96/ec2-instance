#!/bin/bash
#sudo su
sudo apt update
sudo apt install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo snap install docker
sudo apt  install podman-docker 
sudo apt  install docker.io  
sudo docker --version
sudo curl -L "<https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)>" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker run -d --privileged --restart=unless-stopped -p 8080:80 -p 8443:443 rancher/rancher
sudo snap install kubectl --classic
sudo curl -LO "<https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl>"
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH
sudo echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
sudo kubectl version --client
