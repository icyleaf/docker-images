FROM icyleafcn/alpine:latest
MAINTAINER icyleaf <icyleaf.cn@gmail.com>

ENV HUGO_VERSION 0.18
ENV HUGO_HIGHLIGHT yes

RUN apk --update --no-cache add "hugo>${HUGO_VERSION}" && \
    [ "${HUGO_HIGHLIGHT}" == "yes" ] && apk add py-pygments

WORKDIR /site
VOLUME /site

EXPOSE 1313
