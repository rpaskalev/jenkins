#!/bin/bash

# bash script to create a JAR file from the maven app code and maven:3-alpine docker image

echo "*************************"
echo "*****Testing JAR code***"
echo "*************************"

# pass the followinmg as a parameter when you run ./mvn.sh ---     mvn test


docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"


