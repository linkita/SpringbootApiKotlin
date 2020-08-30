#!/bin/sh -l
echo "Waiting for mysql service is up..."
while ! nc -z outbound-mysql 3306; do sleep 1; done;
./mvnw test