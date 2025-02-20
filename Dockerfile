#FROM tomcat:9.0.45-jdk11-adoptopenjdk-hotspot
#RUN mv webapps webapps2 && \
#    mv  webapps.dist/ webapps
#ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
#ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#ADD target/addressbook.war /usr/local/tomcat/webapps/
#EXPOSE 8080
# this is dockerfile

# FROM nginx:alpine


# Use the official Tomcat image
FROM tomcat:latest

# Expose port 8000
EXPOSE 8000

# Change Tomcat to listen on port 8000 instead of 8080
RUN sed -i 's/port="8080"/port="8000"/g' /usr/local/tomcat/conf/server.xml

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
