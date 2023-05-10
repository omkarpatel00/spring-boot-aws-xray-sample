# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

#we will provide the jar file as argument
ARG JAR_FILE=target/spring-boot-xray-demo-0.0.1-SNAPSHOT.jar

#Add the application or jar file inside my container
ADD ${JAR_FILE} spring-boot-xray-demo.jar

# Expose port 8090 to the outside world
EXPOSE 8090

#Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-xray-demo.jar"]
