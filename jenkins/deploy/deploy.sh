#!/bin/bash

echo "maven-project" > /tmp/.auth

echo $BUILD_TAG >> /tmp/.auth

echo $PASS >> /tmp/.auth

scp -i ~/.ssh/production /tmp/.auth ec2-user@10.0.1.237:/tmp/.auth

scp -i ~/.ssh/production ./jenkins/deploy/publish ec2-user@10.0.1.237:/tmp/publish

ssh -i ~/.ssh/production ec2-user@10.0.1.237 "/tmp/publish"
