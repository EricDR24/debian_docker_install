#!/bin/bash

#update
apt update
echo updated

#install packages
apt install apt-transport-https \
ca-certificates \
curl \
gnupg2 \
software-properties-common
echo packages installed

#Curl GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo key added

#verify key
apt-key fingerprint 0EBFCD88

#add docker repository
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
echo repository updated

#update
apt update
echo updated

#install docker
apt install docker-ce

#test docker
docker run hello-world
