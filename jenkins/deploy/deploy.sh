#!/bin/bash

echo "maven-project" > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth

echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth ec2-user@10.0.1.237:/tmp/.auth

scp -i /opt/prod ./jenkins/deploy/publish ec2-user@10.0.1.237:/tmp/publish

ssh -i /opt/prod ec2-user@10.0.1.237 "/tmp/publish"
