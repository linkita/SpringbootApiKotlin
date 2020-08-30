#!/bin/sh -l
echo "Waiting for mysql service is up..."
while ! nc -z outbound-mysql 3306; do sleep 1;
if [[ i -gt 15 ]]; then exit 1; fi
((i+=1));
done;
./mvnw test