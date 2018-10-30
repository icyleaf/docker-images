# Alpine

基于 [alpine](https://hub.docker.com/_/alpine/) 官方镜像版本扩展，仅修改 apk 源和时区。

APK 的源目前采用的是 [清华镜像站](https://mirrors.tuna.tsinghua.edu.cn) 作为国内地区的加速。

## 变量

- **ORIGINAL_REPO_URL** = `http://dl-cdn.alpinelinux.org` (默认源地址，用于替换使用，如有变更可在本镜像没有更新时使用)
- **MIRROR_REPO_URL** = `https://mirrors.tuna.tsinghua.edu.cn` (替换的源地址，如果有自建或更好的源可进行设置)

## 使用

```
FROM icyleafcn/alpine:latest

RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]
```

## 国内目前可用的源

- https://mirrors.tuna.tsinghua.edu.cn/alpine/
- https://mirrors.ustc.edu.cn/alpine/

## 文档

具体使用请直接参考[官方文档](http://gliderlabs.viewdocs.io/docker-alpine)。
