#!/bin/bash

apt update
apt install docker docker.io
COMVER=2.14.2
curl -L "https://github.com/docker/compose/releases/download/v$COMVER/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
docker-compose up -d
