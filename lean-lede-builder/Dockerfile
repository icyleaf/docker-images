FROM ubuntu:18.04
LABEL maintainer="icyleaf <icyleaf.cn@gmail.com>"

ENV MIRROR_SOURCE_URL="http://mirrors.aliyun.com" \
    TZ="Asia/Shanghai" \
    DEBIAN_FRONTEND=noninteractive \
    VERSION_CADDY=1.0.3

RUN set -ex && \
    REPLACE_STRING=$(echo $MIRROR_SOURCE_URL | sed 's/\//\\\//g') && \
    sed -i "s/http:\/\/archive.ubuntu.com/${REPLACE_STRING}/g" /etc/apt/sources.list && \
    sed -i "s/http:\/\/security.ubuntu.com/${REPLACE_STRING}/g" /etc/apt/sources.list && \
    apt-get update -y && \
    apt-get install -y build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev \
                       lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp \
                       libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint \
                       wget curl vim sudo && \
    curl --silent --show-error --fail --location \
          --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - \
          "https://github.com/caddyserver/caddy/releases/download/v${VERSION_CADDY}/caddy_v${VERSION_CADDY}_linux_amd64.tar.gz" \
        | tar --no-same-owner -C /usr/bin/ -xz caddy && \
    chmod 0755 /usr/bin/caddy && \
    /usr/bin/caddy -version && \
    groupadd -r lede && \
    useradd -g lede -rs /bin/bash lede && \
    adduser lede sudo && \
    mkdir /builder && \
    chown -R lede:lede /builder && \
    rm -rf /var/lib/apt/lists/*

USER lede
WORKDIR /builder

RUN git clone https://github.com/coolsnowwolf/lede.git /builder && \
    /builder/scripts/feeds update -a && \
    /builder/scripts/feeds install -a

COPY Caddyfile /etc/Caddyfile

VOLUME ["/builder/bin", "/builder/dl"]

EXPOSE 80 443 2015

CMD ["/usr/bin/caddy", "--conf", "/etc/Caddyfile"]
