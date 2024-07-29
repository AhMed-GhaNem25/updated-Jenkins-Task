FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./home/ghanem/Jenkins/java-maven-simple-app/src/main/java/com/example/Application.java /usr/app/
WORKDIR /usr/app

CMD java -jar java-maven-app-*.jar
