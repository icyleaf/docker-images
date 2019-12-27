# mkcert

基于 [icyleafcn/alpine](alpine/README.md):latest 镜像配置的 mkcert 一个由 Go 语言编写的自签名证书生成工具。

## 快速使用

### 创建一个自签名证书

```bash
$ docker run --rm -v $(pwd):/root/.local/share/mkcert icyleafcn/mkcert \
  mkcert icyleaf.com
```

### 创建一个带根证书的自签名证书

```bash
$ docker run --rm -v $(pwd):/root/.local/share/mkcert icyleafcn/mkcert \
  mkcert -install && mkcert localhost
```
