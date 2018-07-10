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

if [ $IMAGE_PATH = "alpine" ]; then
  ALPINE_VERSIONS=`ls $IMAGE_PATH`
  LAST_VERSION=${ALPINE_VERSIONS[1]}

  for ver in ${ALPINE_VERSIONS[@]}; do
    if [ "$ver" != "README.md"]; then
      echo
      echo "docker build $IMAGE_PATH:$ver -t icyleafcn/$IMAGE_PATH $OTHER_ARGS"
      echo

      docker build -t icyleafcn/$IMAGE_PATH:$ver "$IMAGE_PATH/$ver" $OTHER_ARG
      if [ "$ver" = "$LAST_VERSION" ]; then
        echo "docker tag icyleafcn/$IMAGE_PATH:$ver icyleafcn/$IMAGE_PATH"
        docker tag icyleafcn/$IMAGE_PATH:$ver icyleafcn/$IMAGE_PATH
      fi
    fi
  done

else

  echo
  echo "docker build $IMAGE_PATH -t icyleafcn/$IMAGE_PATH $OTHER_ARGS"
  echo

  docker build -t icyleafcn/$IMAGE_PATH $IMAGE_PATH $OTHER_ARGS
fi
