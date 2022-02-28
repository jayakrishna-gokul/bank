FROM openjdk:11
MAINTAINER Jayakrishna Gokul <jayakrishna.gokul@gmail.com>
LABEL description="A Sample banking App"
RUN mvn clean install
ADD target/rbi-0.0.1.jar rbi-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "rbi-0.0.1.jar"]