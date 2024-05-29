#!/bin/bash

cd 
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
docker-compose --version

git clone https://github.com/brocaar/chirpstack-docker.git

ls
cp docker-compose.yml ~/chirpstack-docker/docker-compose.yml
cp region_as923.toml ~/chirpstack-docker/configuration/chirpstack/region_as923.toml
cp chirpstack-gateway-bridge.toml ~/chirpstack-docker/configuration/chirpstack-gateway-bridge/chirpstack-gateway-bridge.toml

cd 
cd chirpstack-docker
sudo docker-compose up -d
echo "Chirp Stack installed!"