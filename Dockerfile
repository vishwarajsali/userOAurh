# use the openJDK 17 image as the base image
#FROM openjdk:17
#
#RUN mkdir /app
#
#COPY src/main/java/com/vishwarajsali/springbootSecurity/ /app
#
#WORKDIR /app
#
#CMD java SpringbootSecurityApplication


FROM openjdk:17

# docker build -t springbootSecurity:1.0 .
VOLUME /tmp
EXPOSE 8080
RUN mkdir -p /app/
RUN mkdir -p /app/logs/
ADD target/userOAuth-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container", "-jar", "/app/app.jar"]