FROM gradle:6.6.0-jdk11 AS build

COPY build.gradle /build/
COPY src /build/src/

WORKDIR /build/

RUN gradle build --no-daemon

FROM adoptopenjdk/openjdk11:latest

WORKDIR /app

COPY --from=build /build/build/libs/*.jar /app/spring-boot-app.jar

ENTRYPOINT ["java", "-jar","/app/spring-boot-app.jar"]
