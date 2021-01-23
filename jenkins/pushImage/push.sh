#!/bin/bash

echo "********************"
echo "***pushing image****"
echo "********************"

IMAGE=maven-project

echo "***** logging in*******"
docker login -u radostinbg -p $PASS

echo "***** tagging image ******"

docker tag $IMAGE:$BUILD_TAG radostinbg/$IMAGE:$BUILD_TAG

echo "**** pushing image *****"

docker push radostinbg/$IMAGE:$BUILD_TAG
