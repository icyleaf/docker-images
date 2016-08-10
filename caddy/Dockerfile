FROM icyleafcn/alpine:latest
MAINTAINER icyleaf <icyleaf.cn@gmail.com>

ENV CADDY_FEATURES "git hugo"

RUN apk --update --no-cache add curl openssh-client openssh-client git
RUN FEATURES_LIST=$(echo $CADDY_FEATURES | sed 's/ /%2C/g') && \
    curl -L --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" \
        "https://caddyserver.com/download/build?os=linux&arch=amd64&features=${FEATURES_LIST}" \
      | tar -xz caddy -C /usr/bin/ && \
    apk del curl

ADD root /

WORKDIR /site
VOLUME /site

EXPOSE 2015

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["-conf", "/var/local/html/Caddyfile"]