#! /bin/bash

service_center_location="/opt/lib/apache-servicecomb-service-center-1.3.0-linux-amd64"
cd ${service_center_location}

bash -c ./service-center > ./logs/service-center.log 2>&1 &
bash -c ./frontend > ./logs/service-center-front.log 2>&1 &

while true
do
  sleep 20
done
