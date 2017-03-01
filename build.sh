#!/usr/bin/env bash


IMAGE_PATH=$1
OTHER_ARGS="${*:2}"

if [ -z $IMAGE_PATH ]; then
  echo "Missing image path."
  exit 1
fi

if [ ! -d $IMAGE_PATH ]; then
  echo "Not exist path: ${IMAGE_PATH}"
  exit 1
fi

echo "docker build $IMAGE_PATH -t icyleafcn/$IMAGE_PATH $OTHER_ARGS"
docker build -t icyleafcn/$IMAGE_PATH $IMAGE_PATH $OTHER_ARGS

