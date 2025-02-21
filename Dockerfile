#FROM tomcat:9.0.45-jdk11-adoptopenjdk-hotspot
#RUN mv webapps webapps2 && \
#    mv  webapps.dist/ webapps
#ADD context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
#ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
#ADD target/addressbook.war /usr/local/tomcat/webapps/
#EXPOSE 8080
# this is dockerfile


# Use the official Nginx base image
FROM nginx:latest

# Expose port 8000
EXPOSE 8000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
