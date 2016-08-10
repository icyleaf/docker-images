# Alpine docker image

Based on [alpine](https://hub.docker.com/_/alpine/):latest docker image, easy change apk repo url.

It will using mirror repo url powered by [tsinghua](https://mirrors.tuna.tsinghua.edu.cn) for SPEED FASTER for China.

## Usage

Use like you would any other base image:

```
FROM icyleafcn/alpine:latest

RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```

## Mirrors in China

- https://mirrors.tuna.tsinghua.edu.cn/alpine/
- http://mirrors.ustc.edu.cn/alpine/

## Document

This image is well documented. [Check out the documentation at Viewdocs](http://gliderlabs.viewdocs.io/docker-alpine).