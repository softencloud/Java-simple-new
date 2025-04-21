# Use official Tomcat image with Java 17
FROM tomcat:10.1-jdk17

# Clean default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat webapps directory
COPY target/hello-devops.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
