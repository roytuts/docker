FROM maven:3.8.7-eclipse-temurin-19 AS build

COPY pom.xml /app/
COPY src /app/src/

WORKDIR /app/

RUN mvn package

FROM openjdk:19-jdk-alpine

COPY --from=build /app/target/*.jar echo-app.jar

RUN apk update && apk add --no-cache netcat-openbsd

COPY wait.sh /wait.sh
RUN chmod +x /wait.sh
