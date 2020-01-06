FROM golang:1.13-alpine as builder

ARG version="1.4.1"

WORKDIR /app

RUN apk --no-cache add git curl
RUN curl -L https://github.com/FiloSottile/mkcert/archive/v${version}.tar.gz | tar -xz
RUN cp mkcert-${version}/* /app
RUN CGO_ENABLED=0 go build -o /go/bin/mkcert
RUN /go/bin/mkcert -version

FROM icyleafcn/alpine:3.10
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"
LABEL caddy_version="1.4.1"

COPY --from=builder /go/bin/mkcert /usr/bin/mkcert

RUN apk --no-cache add openssl

WORKDIR /root/.local/share/mkcert

VOLUME [ "/root/.local/share/mkcert" ]
