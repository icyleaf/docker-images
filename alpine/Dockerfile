FROM alpine:latest
MAINTAINER icyleaf <icyleaf.cn@gmail.com>

ENV ORIGINAL_REPO_URL "http://dl-cdn.alpinelinux.org"
ENV MIRROR_REPO_URL "https://mirrors.tuna.tsinghua.edu.cn"

RUN REPLACE_STRING=$(echo $MIRROR_REPO_URL | sed 's/\//\\\//g') && \
    SEARCH_STRING=$(echo $ORIGINAL_REPO_URL | sed 's/\//\\\//g') && \
    sed -i "s/$SEARCH_STRING/$REPLACE_STRING/g" /etc/apk/repositories