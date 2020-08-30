FROM openjdk:14-jdk-alpine
COPY . /app
COPY entrypoint.sh entrypoint.sh
RUN chmod +x /app/entrypoint.sh

WORKDIR /app
ENTRYPOINT ./entrypoint.sh