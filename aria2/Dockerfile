FROM icyleafcn/s6-overlay
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

WORKDIR /app

RUN set -ex && \
    apk add --update --no-cache bash curl aria2 && \
    curl https://getcaddy.com | bash -s personal && \
    wget -q -P /tmp --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/1.1.3/AriaNg-1.1.3.zip && \
    unzip /tmp/AriaNg-1.1.3.zip -d /app && \
    rm /tmp/AriaNg-1.1.3.zip && \
    apk del bash

ADD root /

VOLUME [ "/data" ]

EXPOSE 6080 6800 51413 63819
