ARG image_version=3.16
FROM alpine:$image_version

ARG version=v0.1
ENV VERSION=$version
ENV MERTRICS_ADDRESS=":9103"

ADD https://github.com/weiqiang333/bandwagonhost_cloud_exporter/releases/download/${VERSION}/bandwagonhost_cloud_exporter-${VERSION}-linux-amd64.tar.gz /tmp
RUN mkdir -p /tmp/bandwagonhost_cloud_exporter && \
    mkdir -p /etc/bandwagonhost_cloud_exporter && \
    tar -C /tmp/bandwagonhost_cloud_exporter -zxf /tmp/bandwagonhost_cloud_exporter-${VERSION}-linux-amd64.tar.gz && \
    mv /tmp/bandwagonhost_cloud_exporter/config/bandwagonhost_cloud_exporter.yaml /etc/bandwagonhost_cloud_exporter/config.yaml && \
    mv /tmp/bandwagonhost_cloud_exporter/bandwagonhost_cloud_exporter /usr/local/bin && \
    chmod +x /usr/local/bin/bandwagonhost_cloud_exporter && \
    rm -rf /tmp/bandwagonhost_cloud_exporter*

COPY docker-entrypoint.sh /
ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "run" ]
