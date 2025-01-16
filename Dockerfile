FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-ecs-codepipeline-0.0.1-SNAPSHOT.jar springboot-ecs-codepipeline-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/springboot-ecs-codepipeline-0.0.1-SNAPSHOT.jar"]