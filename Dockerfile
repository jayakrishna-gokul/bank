 #Maven
FROM maven:3.8.1-openjdk-11-slim AS builder
WORKDIR /app
COPY pom.xml .
RUN mvn -e -B dependency:resolve
COPY src ./src
RUN mvn clean -e -B package


FROM openjdk:11
MAINTAINER Jayakrishna Gokul <jayakrishna.gokul@gmail.com>
LABEL description="A Sample banking App"
ENTRYPOINT ["mvn"]
CMD ["clean", "install"]
ADD target/rbi-0.0.1.jar rbi-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "rbi-0.0.1.jar"]