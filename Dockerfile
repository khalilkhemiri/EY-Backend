FROM openjdk:17-alpine
RUN mvn clean package -DskipTests 
WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
