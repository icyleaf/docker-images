FROM ubuntu:16.04
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ENV LANG=C.UTF-8 \
    TZ="Asia/Shanghai"

RUN set -ex && \
    sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    sed -i 's/security.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list && \
    apt update && \
    apt install -y tzdata && \
    ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && dpkg-reconfigure -f noninteractive tzdata && \
    rm -rf /var/lib/apt/lists/*
