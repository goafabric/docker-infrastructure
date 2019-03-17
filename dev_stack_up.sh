#!/bin/bash

#portainer
docker-compose -f portainer_stack/docker-compose.yml up -d

#pgadmin
docker-compose -f pgadmin_stack/docker-compose.yml up -d

#dev_database
docker-compose -f dev_database_stack/docker-compose.yml up -d
