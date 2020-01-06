FROM icyleafcn/s6-overlay
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ARG ARIANG_VERSION=1.1.4

ENV BT_TRACKERS_URL=https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_best_ip.txt

WORKDIR /app

RUN set -ex && \
    apk add --update --no-cache bash curl aria2 && \
    curl https://getcaddy.com | bash -s personal && \
    wget -q -P /tmp --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VERSION}/AriaNg-${ARIANG_VERSION}.zip && \
    unzip /tmp/AriaNg-${ARIANG_VERSION}.zip -d /app && \
    rm /tmp/AriaNg-${ARIANG_VERSION}.zip

ADD root /

VOLUME [ "/data" ]

EXPOSE 6080 6800 51413 63819
