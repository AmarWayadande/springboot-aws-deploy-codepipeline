FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-ecs-codepipeline.jar springboot-ecs-codepipeline.jar
ENTRYPOINT ["java","-jar","/springboot-ecs-codepipeline.jar"]


# Use the official OpenJDK 17 image from Docker Hub
#FROM openjdk:17
# Set working directory inside the container
#WORKDIR /app
# Copy the compiled Java application JAR file into the container
#COPY ./target/springboot-ecs-codepipeline.jar /app
# Expose the port the Spring Boot application will run on
#EXPOSE 8080
# Command to run the application
#CMD ["java", "-jar", "springboot-ecs-codepipeline.jar"]

#FROM openjdk:17-jdk-alpine
#VOLUME /tmp
#ADD target/springboot-ecs-codepipeline.jar  springboot-ecs-codepipeline.jar
#ENTRYPOINT ["java","-jar","/springboot-ecs-codepipeline.jar"]