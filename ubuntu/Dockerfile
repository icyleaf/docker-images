FROM ubuntu:16.04
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ENV MIRROR_SOURCE_URL="http://mirrors.aliyun.com" \
    LANG=C.UTF-8 \
    TZ="Asia/Shanghai"

RUN set -ex && \
    REPLACE_STRING=$(echo $MIRROR_SOURCE_URL | sed 's/\//\\\//g') && \
    sed -i "s/http:\/\/archive.ubuntu.com/${REPLACE_STRING}/g" /etc/apt/sources.list && \
    sed -i "s/http:\/\/security.ubuntu.com/${REPLACE_STRING}/g" /etc/apt/sources.list && \
    apt-get update -y && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && dpkg-reconfigure -f noninteractive tzdata && \
    rm -rf /var/lib/apt/lists/*
