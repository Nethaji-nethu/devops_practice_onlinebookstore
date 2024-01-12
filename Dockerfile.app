FROM maven:3.9.6-eclipse-temurin-11 as build
WORKDIR /app
#COPY pom.xml .
#COPY src scripts WebContent setup .
COPY . .
RUN mvn clean package 

FROM tomcat:8.5-jre8
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
