FROM maven:latest as builder

COPY pom.xml /usr/local/pom.xml
COPY server /usr/local/server
COPY client /usr/local/client
WORKDIR /usr/local/

RUN mvn clean install


FROM openjdk:11
MAINTAINER Jayakrishna Gokul <jayakrishna.gokul@gmail.com>
LABEL description="A Sample banking App"
ADD target/rbi-0.0.1.jar rbi-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "rbi-0.0.1.jar"]