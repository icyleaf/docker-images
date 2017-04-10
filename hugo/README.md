# Hugo

基于 [icyleafcn/alpine](alpine/README.md):latest 镜像配置的 hugo 一个由 Go 语言编写的静态化站点生成工具。

> hugo 安装采用 apk 库，无法保证和最新 github 最新发布保持一致。

## 变量

- icyleafcn/alpine [变量](alpine/README.md)
- **HUGO_VERSION** = `0.18`
- **HUGO_HIGHLIGHT** = `yes/no` (是否需要设置[语法高亮](http://gohugo.io/extras/highlighting/)来安装依赖 Pygments for [highlight shortcode])

## 快速使用

### 创建一个新站

```bash
# Create a new site
$ docker run --rm -e HUGO_HIGHLIGHT="no" -v /path/to/hugo:/site icyleafcn/hugo hugo new site .
# Change to the path
$ cd /path/to/hugo
# Install a hugo theme, for example:
$ git clone https://github.com/vjeantet/hugo-theme-casper themes/casper
# Run the hugo server
$ docker run -d -p 1313:1313 --name hugo-blog -v /path/to/hugo:/site icyleafcn/hugo hugo server --watch --theme=casper --bind=0.0.0.0
```

### 已存在项目的集成

```bash
# Change to the path
$ cd /path/to/hugo
# Create new post
$ docker run --rm -v /path/to/hugo:/site icyleafcn/hugo hugo new post/hello-world.md
# Take some time to get it done, then
# Run the hugo server
$ docker run -d --name hugo-blog -v /path/to/hugo:/site icyleafcn/hugo hugo server --bind=0.0.0.0 --theme=casper --watch
```

### 生成静态化文件

```bash
# Generate and output to /var/www/html path
$ docker run --rm -v /path/to/hugo:/site icyleafcn/hugo hugo server -destination="/var/www/html"
```

## Support http servers

> TODO
