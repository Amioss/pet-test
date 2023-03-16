FROM ubuntu:latest

# Installer les paquets
RUN apt-get update
RUN apt-get install -y openjdk-17-jdk openjdk-17-jre
RUN apt-get install -y vim mysql-server mysql-client
RUN apt-get install -y git

RUN service mysql start

EXPOSE 8080

RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR spring-petclinic
RUN ./mvnw package

EXPOSE 3306
EXPOSE 80

CMD java -jar target/*.jar
