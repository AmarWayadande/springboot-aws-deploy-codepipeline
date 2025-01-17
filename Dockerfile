#FROM eclipse-temurin:17-jdk-alpine
#RUN apk add curl
#VOLUME /tmp
#EXPOSE 8080
#ADD target/springboot-ecs-codepipeline-0.0.1-SNAPSHOT.jar springboot-ecs-codepipeline-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/springboot-ecs-codepipeline-0.0.1-SNAPSHOT.jar"]


# Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17
# Set working directory inside the container
WORKDIR /app
# Copy the compiled Java application JAR file into the container
COPY ./target/springboot-ecs-codepipeline.jar /app
# Expose the port the Spring Boot application will run on
EXPOSE 8080
# Command to run the application
CMD ["java", "-jar", "springboot-ecs-codepipeline.jar"]