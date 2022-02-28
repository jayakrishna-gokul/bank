FROM openjdk:11
MAINTAINER Jayakrishna Gokul <jayakrishna.gokul@gmail.com>
LABEL description="A Sample banking App"
# create app folder for sources
RUN mkdir -p /build
WORKDIR /build
COPY pom.xml /build
#Download all required dependencies into one layer
RUN mvn -B dependency:resolve dependency:resolve-plugins
#Copy source code
COPY src /build/src
# Build application
RUN mvn clean install
ADD target/rbi-0.0.1.jar rbi-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "rbi-0.0.1.jar"]