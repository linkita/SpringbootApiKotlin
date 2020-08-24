FROM openjdk:14-jdk-alpine
COPY . /app
WORKDIR /app
CMD /bin/sh
#RUN ./mvnw clean package
#RUN mv /app/target/*.jar /app/target/app.jar