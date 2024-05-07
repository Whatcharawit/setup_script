#!/bin/bash

sudo docker run --name postgres -e POSTGRES_PASSWORD=artron@IN -d -p 5432:5432 -v pgvolume:/var/lib/postgresql/data postgres

sudo docker run --name pgadmin -p 82:80 -e 'PGADMIN_DEFAULT_EMAIL=admin@artron.com' -e 'PGADMIN_DEFAULT_PASSWORD=artron@IN' -d dpage/pgadmin4

sudo apt-get update
sudo service docker restart
sudo docker start postgres
sudo docker pgadmin