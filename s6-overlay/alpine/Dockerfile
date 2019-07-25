FROM icyleafcn/alpine:3.10
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ENV S6_OVERLAY_VERSION="1.22.1.0"

COPY root /

RUN set -ex && \
    apk add --update --no-cache curl && \
    curl -sSL https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz | tar xfz - -C / && \
    apk del --no-cache curl

ENTRYPOINT [ "/init" ]
