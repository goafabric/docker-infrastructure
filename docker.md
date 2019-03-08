#portainer
docker-compose -f portainer_stack/docker-compose.yml up -d
docker-compose -f portainer_stack/docker-compose.yml down 

#database
docker-compose -f database_stack/docker-compose.yml up -d
docker-compose -f database_stack/docker-compose.yml down 

#prune
docker system prune -a && docker volume prune -f


