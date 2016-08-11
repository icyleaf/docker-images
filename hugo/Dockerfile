FROM icyleafcn/alpine:latest
MAINTAINER icyleaf <icyleaf.cn@gmail.com>

ENV HUGO_VERSION 0.16
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux-64bit.tgz
ENV HUGO_DIR /usr/local/source/hugo_${HUGO_VERSION}
ENV HUGO_HIGHLIGHT yes

RUN apk --update --no-cache add curl && \
    apk add hugo --version ${HUGO_VERSION} && \
    [ "${HUGO_HIGHLIGHT}" == "yes" ] && apk add py-pygments

RUN mkdir -p ${HUGO_DIR} && \
    cd ${HUGO_DIR} && \
    curl -L https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} | tar zxvf - && \
    ln -s ${HUGO_DIR}/hugo /usr/bin/hugo && \
    apk del curl

WORKDIR /site
VOLUME /site

EXPOSE 1313

ENTRYPOINT ["hugo"]