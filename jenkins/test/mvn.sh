#!/bin/bash

# bash script to create a JAR file from the maven app code and maven:3-alpine docker image

echo "*************************"
echo "*****Testing JAR code***"
echo "*************************"

# pass the followinmg as a parameter when you run ./mvn.sh ---     mvn test
WORKSPACE=/home/ec2-user/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"


