#portainer
docker-compose -f portainer_stack/docker-compose.yml up -d
docker-compose -f portainer_stack/docker-compose.yml down 

#pgadmin
docker-compose -f pgadmin_stack/docker-compose.yml up -d
docker-compose -f pgadmin_stack/docker-compose.yml down

#dev_database
docker-compose -f dev_database_stack/docker-compose.yml up -d
docker-compose -f dev_database_stack/docker-compose.yml down 

#CREATE EXTENSION pg_stat_statements;

#prune
docker system prune -a && docker volume prune -f


