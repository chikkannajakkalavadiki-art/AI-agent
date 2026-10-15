FROM eclipse-temurin:17-jre

WORKDIR /app

COPY target/docker-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

#FROM jenkins/jenkins:lts-jdk17
#
#USER root
#
#RUN apt-get update && apt-get install -y --no-install-recommends docker-cli && rm -rf /var/lib/apt/lists/*
#
#USER jenkins
#
#
