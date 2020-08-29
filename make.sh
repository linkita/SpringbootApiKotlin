#!/bin/bash

#set colors :)
yel=$'\e[1;33m'
end=$'\e[0m'

case $1 in

  install)
    printf "%s\n" "Installing the project..."
    docker-compose up --build -d
    printf "%s\n" "${yel}Proyect started :)${end}"
    ;;

  start)
    printf "%s\n" "Starting the project..."
    docker-compose up -d
    ;;

  tests)
    printf "%s\n" "Executing the tests..."
    docker exec -it outbound-api ./mvnw test
    ;;

  build)
    printf "%s\n" "Building the project..."
    docker exec -it outbound-api ./mvnw clean package
    ;;

  play)
    printf "%s\n" "Let's play"
    printf "%s\n" "${yel}Go to http://0.0.0.0:8081/swagger-ui/index.html?configUrl=/v3/api-docs/swagger-config#/${end}"

    docker exec -it outbound-api mv target/*.jar target/app.jar
    docker exec -it outbound-api java -jar target/app.jar;
    ;;

  down)
    printf "%s\n" "Shutting down..."
    docker-compose down
    ;;

  *)
    printf "%s\n"  "The available commands are:"
    printf "  %s\n" "${yel}start${end}: Start the entire project, get the containers ready, build and execute the app"
    printf "  %s\n" "${yel}test${end}: Execute the tests"
    printf "  %s\n" "${yel}build${end}: Compile the project"
    printf "  %s\n" "${yel}play${end}: Execute the project"
    printf "  %s\n" "${yel}down${end}: Shut down the containers"
    ;;
esac
