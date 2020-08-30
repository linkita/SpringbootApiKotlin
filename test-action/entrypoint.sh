#!/bin/sh -l
echo "Waiting for mysql service is up..."
i=0
#while ! nc -z outbound-mysql 3306;
while true; do sleep 1;
if [[ i -gt 5 ]]
then
  exit 1
fi
((i+=1))
done;
#./mvnw test