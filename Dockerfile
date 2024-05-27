FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8080
ADD target/springboot-aws-codefamily-service.jar springboot-aws-codefamily-service.jar
ENTRYPOINT ["java","-jar","/springboot-aws-codefamily-service.jar"]
