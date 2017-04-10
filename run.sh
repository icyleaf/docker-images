#!/usr/bin/env bash

IMAGE_NAME=$1

if [ -z $IMAGE_NAME ]; then
  echo "Missing image name."
  exit 1
fi

IMAGE="icyleafcn/$IMAGE_NAME"
if [ -z $(docker images | grep $IMAGE | awk '{print $1}') ]; then
  echo "Not exist image: ${IMAGE}"
  exit 1
fi

NAME="$IMAGE_NAME:dev"
echo "docker run -it --rm --name $NAME $IMAGE"
docker run -it --rm --name $NAME $IMAGE
