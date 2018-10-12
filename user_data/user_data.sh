#!/bin/bash -xe

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install mc docker git
usermod -aG docker ec2-user
systemctl enable docker
chkconfig docker on
systemctl start docker

curl -L "https://github.com/docker/compose/releases/download/1.23.0-rc2/docker-compose-Linux-x86_64" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose

docker pull amazonlinux

git clone https://github.com/bigstinky86/aws-module4.git /home/module4
