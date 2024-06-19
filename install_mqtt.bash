#!/bin/bash

cd 
cd setup_script/mqtt

# In case you don't have docker-compose you can install it
sudo apt install docker-compose -y

sudo docker-compose -p mqtt up -d

echo "Install MQTT successful!"