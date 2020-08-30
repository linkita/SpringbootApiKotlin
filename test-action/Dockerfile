FROM openjdk:14-jdk-alpine
COPY . /app
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /app
ENTRYPOINT ["sh", "/entrypoint.sh"]