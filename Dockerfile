FROM maven:3.6.3 AS maven
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn clean install

FROM openjdk:11
MAINTAINER Jayakrishna Gokul <jayakrishna.gokul@gmail.com>
LABEL description="A Sample banking App"
RUN maven clean install
WORKDIR /opt/app
COPY --from=maven /usr/src/app/target/rbi-0.0.1.jar /opt/app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "rbi-0.0.1.jar"]