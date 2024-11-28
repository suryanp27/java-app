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

