#!/bin/bash

cd 
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
docker-compose --version

git clone https://github.com/brocaar/chirpstack-docker.git

cd setup_script
cp docker-compose.yml ~/chirpstack-docker/docker-compose.yml
cp region_as923.toml ~/chirpstack-docker/region_as923.toml
cp chirpstack-gateway-bridge.toml ~/chirpstack-docker/chirpstack-gateway-bridge.toml

cd 
cd chirpstack-docker
sudo docker-compose up -d
echo "Chirp Stack installed!"