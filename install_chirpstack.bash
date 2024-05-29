#!/bin/bash

cd 

git clone https://github.com/brocaar/chirpstack-docker.git

cp ./setup-script/docker-compose.yml ./chirpstack-docker/docker-compose.yml
cp ./setup-script/region_as923.toml ./chirpstack-docker/region_as923.toml
p ./setup-script/chirpstack-gateway-bridge.toml ./chirpstack-docker/chirpstack-gateway-bridge.toml

cd chirpstack-docker
sudo docker-compose up -d
echo "Chirp Stack installed!"