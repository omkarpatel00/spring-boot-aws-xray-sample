# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the pom.xml file to the container at /app
COPY pom.xml .

# Copy the rest of the application code to the container at /app
COPY src ./src

# Build the application using Maven
# RUN ./mvn package

# Expose port 8080 to the outside world
EXPOSE 8080

# Set the default command to run when the container starts
CMD ["java", "-jar", "./target/spring-boot-xray-demo-0.0.1-SNAPSHOT.jar"]
