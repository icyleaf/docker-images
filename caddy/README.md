# Caddy docker image

A [Docker](http://docker.com) image for [Caddy](http://caddyserver.com). This image includes the [git](http://caddyserver.com/docs/git) addon.

## Environment Variables

- **CADDY_FEATURES** = `filemanager dnsimple` (Add more hugo features, separate with __space__)

## Usage

```bash
$ docker run -d -p 2015:2015 icyleafcn/caddy
```

## Addons(Features)

```
$ docker run -d -e CADDY_FEATURES="git hugo realip vultr" -p 80:80 -v /path/to/site:/site icyleafcn/caddy
```