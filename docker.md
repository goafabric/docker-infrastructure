#prune
docker system prune -a && docker volume prune -f

#compose
docker-compose -f docker-compose.yml -p development_stack up -d
docker-compose -p development_stack down --volumes && docker volume prune -f


#portainer
docker volume create portainer_data
docker run -d -p 9000:9000 --name portainer agent--restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer


---

