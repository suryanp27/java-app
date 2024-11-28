Docker file for java
------------------------

sample java application : App.java
-----------------------------------

public class App {
    public static void main(String[] args) {
        System.out.println("Hello from Java inside Docker!");
    }
}

===================================================================================
Docker file: Dockerfile
----------------------

# Use the official OpenJDK image as the base image
FROM openjdk:17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Java file to the working directory
COPY App.java .

# Compile the Java file
RUN javac App.java

# Define the command to run the Java application
CMD ["java", "App"]

===================================================================================

Build the Docker Image: Run the following command to build the image:
---------------------------------------------------------------------

docker build -t java-sample-app .

Run the Container: Run the container to execute the Java program:
------------------------------------------------------------------

docker run --rm java-sample-app

=========================================================================================================
=========================================================================================================

Improved Version for JAR Files
------------------------------
If you package your Java application into a JAR file (e.g., using Maven or Gradle), you can use the following Dockerfile:

Updated Dockerfile for JAR
---------------------------

# Use the official OpenJDK image as the base image
FROM openjdk:17-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/app.jar app.jar

# Define the command to run the JAR file
CMD ["java", "-jar", "app.jar"]

-------------------------------------------------------------------------------------------
Steps to Build and Run
Package your application:

mvn package   

This will create a target/app.jar.
-------------------------------------------

Build and run the Docker image:
------------------------------

docker build -t java-jar-app .
docker run --rm java-jar-app

