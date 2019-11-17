#build
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven:cached -v ~/.m2:/root/.m2:cached -w /usr/src/mymaven maven:3.5-jdk-8 mvn clean verify
~/Applications/Development/apache-maven-3.5.4/bin/mvn clean package
