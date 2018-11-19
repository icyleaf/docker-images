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

if [ -z `ls ${IMAGE_PATH} | grep Dockerfile` ]; then
  IMAGE_VERSIONS=`ls $IMAGE_PATH`
  LATEST_VERSION=${IMAGE_VERSIONS[1]}

  for ver in ${IMAGE_VERSIONS[@]}; do
    if [ "$ver" != "README.md" ]; then
      echo
      echo "$ docker build --no-cache -t icyleafcn/$IMAGE_PATH $OTHER_ARGS $IMAGE_PATH:$ver"
      echo

      docker build -t icyleafcn/$IMAGE_PATH:$ver "$IMAGE_PATH/$ver" $OTHER_ARG
      if [ "$ver" = "$LATEST_VERSION" ]; then
        echo "$ docker tag icyleafcn/$IMAGE_PATH:$ver icyleafcn/$IMAGE_PATH"
        docker tag icyleafcn/$IMAGE_PATH:$ver icyleafcn/$IMAGE_PATH
      fi
    fi
  done
else
  echo
  echo "$ docker build $IMAGE_PATH -t icyleafcn/$IMAGE_PATH $OTHER_ARGS"
  echo

  docker build -t icyleafcn/$IMAGE_PATH $IMAGE_PATH $OTHER_ARGS
fi
