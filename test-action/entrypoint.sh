#!/bin/sh -l
echo "Waiting for mysql service is up..."
i=0
while ! nc -z outbound-mysql 3306; do sleep 1;
  if [[ $i -gt 30 ]]; then exit 1; fi; i=$((i+1));
done;

./mvnw test