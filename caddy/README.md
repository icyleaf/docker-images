# Caddy

基于 [icyleafcn/alpine](alpine/README.md):latest 镜像配置的 caddy 一个由 Go 语言编写的 web 服务容器。

## 变量

- icyleafcn/alpine [变量](alpine/README.md)
- **CADDY_FEATURES** = `filemanager dnsimple` (添加更多插件支持，使用空格分隔)

## 使用

```bash
$ docker run -d -p 2015:2015 icyleafcn/caddy
```

## 插件

```
$ docker run -d -e CADDY_FEATURES="git hugo realip vultr" -p 80:80 -v /path/to/site:/site icyleafcn/caddy
```
