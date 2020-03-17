FROM openjdk:8-jdk-alpine as build
WORKDIR /workspace/app

COPY gradlew .
COPY gradle/ gradle/
COPY build.gradle build.gradle
COPY src src

RUN ./gradlew build -x test