#!/bin/bash

cp -f java-app/target/*.jar jenkins/build/

echo "**********************"
echo "** build Docker image**"
echo "**********************"

cd jenkins/build && docker-compose -f docker-compose-app.yml build --no-cache
