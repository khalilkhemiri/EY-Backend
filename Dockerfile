FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /home/app
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn clean package
FROM openjdk:17-jdk-slim
WORKDIR /home/app
COPY --from=build /home/app/target/spring_rest_docker.jar /home/app/spring_rest_docker.jar
EXPOSE 8083
ENTRYPOINT ["java","-jar","/home/app/spring_rest_docker.jar"]
