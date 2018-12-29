#!/bin/sh
echo "###### Installing dependencies ######"
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

echo "###### Adding Docker Repo ######"
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

echo "###### Installing Docker CE ######"
sudo yum install docker-ce

echo "Starting Docker Daemon"
sudo systemctl start docker

echo "Adding Docker Group"
sudo groupadd docker

echo "Adding ${USER} to Docker Group"
sudo usermod -aG docker $USER
