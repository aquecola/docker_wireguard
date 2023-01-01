#!/bin/bash

dnf install wget
wget -P /etc/yum.repos.d/ https://download.docker.com/linux/centos/docker-ce.repo
dnf install docker-ce docker-ce-cli
systemctl enable docker --now

COMVER=2.14.2
curl -L "https://github.com/docker/compose/releases/download/v$COMVER/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
docker-compose up -d
