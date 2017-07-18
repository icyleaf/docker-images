FROM icyleafcn/alpine:latest
MAINTAINER icyleaf <icyleaf.cn@gmail.com>

WORKDIR /xware
ADD Xware1.0.20_x86_32_glibc.zip /xware
ADD monitor.sh /xware

RUN unzip Xware1.0.20_x86_32_glibc.zip && chmod a+x /xware/monitor.sh

VOLUME /data/TDDOWNLOAD

CMD ["./monitor.sh"]