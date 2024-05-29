#!/bin/bash

cd 
sudo apt-get update
sudo apt-get install docker-compose-plugin -y

sudo service docker restart
echo "docker restarted!"
sudo docker-compose --version

git clone https://github.com/brocaar/chirpstack-docker.git

ls
cd setup_scrip
ls
cp docker-compose.yml ~/chirpstack-docker/docker-compose.yml
cp region_as923.toml ~/chirpstack-docker/configuration/chirpstack/region_as923.toml
cp chirpstack-gateway-bridge.toml ~/chirpstack-docker/configuration/chirpstack-gateway-bridge/chirpstack-gateway-bridge.toml

cd 
cd chirpstack-docker
sudo docker-compose up -d
echo "Chirp Stack installed!"