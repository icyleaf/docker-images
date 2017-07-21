FROM icyleafcn/alpine:latest
MAINTAINER icyleaf <icyleaf.cn@gmail.com>

ARG CADDY_FEATURES="http.git"

RUN set -ex \
    \
    && apk --update --no-cache add curl tar git && \
    FEATURES_LIST=$(echo $CADDY_FEATURES | sed 's/ /,/g') && \
    curl --location --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
      "https://caddyserver.com/download/linux/amd64?plugins=${FEATURES_LIST}" \
      | tar -C /usr/bin/ -xz caddy && \
    /usr/bin/caddy -version

ADD root /

WORKDIR /site
VOLUME /site

EXPOSE 80 443 2015

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile", "--log", "stdout"]
