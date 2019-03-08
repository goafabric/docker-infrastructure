#prune
docker system prune -a && docker volume prune -f

#portainer
docker-compose -f portainer_stack/docker-compose.yml up -d
docker-compose -f portainer_stack/docker-compose.yml down --volumes

#database
docker-compose -f database_stack/docker-compose.yml up -d
docker-compose -f database_stack/docker-compose.yml down --volumes 


#portainer
docker volume create portainer_data
docker run -d -p 9000:9000 --name portainer agent --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer


---

