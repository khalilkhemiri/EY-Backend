# Utilisation d'une image Java officielle OpenJDK 17 Alpine
FROM openjdk:17-alpine

# Dossier de travail à l'intérieur du conteneur
WORKDIR /app

# Copier le jar construit dans le dossier cible
COPY target/spring_rest_docker.jar /app/spring_rest_docker.jar

# Commande pour exécuter l'application
CMD ["java", "-jar", "/app/spring_rest_docker.jar"]
