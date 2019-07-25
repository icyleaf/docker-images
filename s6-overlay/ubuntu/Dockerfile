FROM icyleafcn/ubuntu
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ENV S6_OVERLAY_VERSION="1.22.1.0"

COPY root /

RUN set -ex && \
    apt-get update -qq && \
    apt-get install -qqy --no-install-recommends curl ca-certificates && \
    curl -sSL https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz | tar xfz - -C / && \
    apt-get remove -y ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/init" ]
