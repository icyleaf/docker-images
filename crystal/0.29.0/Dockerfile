FROM icyleafcn/alpine:3.10
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ENV CRYSTAL_VERSION=0.29.0-r0
ENV SHARDS_VERSION=0.9.0-r0

RUN apk add --update --no-cache crystal=${CRYSTAL_VERSION} shards=${SHARDS_VERSION}

CMD ["crystal", "--version"]
