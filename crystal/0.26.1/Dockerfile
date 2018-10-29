FROM icyleafcn/alpine:edge
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ENV CRYSTAL_VERSION=0.26.1-r0
ENV SHARDS_VERSION=0.8.1-r0

RUN apk add --update --no-cache crystal=${CRYSTAL_VERSION} shards=${SHARDS_VERSION}

CMD ["crystal", "--version"]
