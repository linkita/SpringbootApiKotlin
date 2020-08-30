#!/bin/sh -l
echo "Waiting for mysql service is up..."
i=0
#while ! nc -z outbound-mysql 3306; do sleep 1;
while true; do sleep 1;
echo aa
if [[ $i -gt 5 ]]
then
  exit 1
fi
i=$((i+1))
echo fo $i


done;