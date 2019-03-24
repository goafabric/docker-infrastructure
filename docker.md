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

#build
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven:cached -v ~/.m2:/root/.m2:cached -w /usr/src/mymaven maven:3.5-jdk-8 mvn clean verify
~/Applications/Development/apache-maven-3.5.4/bin/mvn clean package

