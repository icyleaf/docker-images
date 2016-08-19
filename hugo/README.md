# Hugo docker image

Based on [alpine](https://hub.docker.com/_/alpine/):latest docker image for hugo static page generator.

## Environment Variables

- **HUGO_HIGHLIGHT** = `yes/no` (optional to install Pygments for [highlight shortcode](http://gohugo.io/extras/highlighting/).)

## Quick start

### Create a new site

```bash
# Create a new site
$ docker run --rm -e HUGO_HIGHLIGHT="no" -v /path/to/hugo:/site icyleafcn/hugo new site .
# Change to the path
$ cd /path/to/hugo
# Install a hugo theme, for example:
$ git clone https://github.com/vjeantet/hugo-theme-casper themes/casper
# Run the hugo server
$ docker run -d -p 1313:1313 --name hugo-blog -v /path/to/hugo:/site icyleafcn/hugo server --watch --theme=casper --bind=0.0.0.0
```

### Exist hugo site

```bash
# Change to the path
$ cd /path/to/hugo
# Create new post
$ docker run --rm -v /path/to/hugo:/site icyleafcn/hugo new post/hello-world.md
# Take some time to get it done, then
# Run the hugo server
$ docker run -d --name hugo-blog -v /path/to/hugo:/site icyleafcn/hugo server --bind=0.0.0.0 --theme=casper --watch
```

### Generate static

```bash
# Generate and output to /var/www/html path
$ docker run --rm -v /path/to/hugo:/site icyleafcn/hugo server -destination="/var/www/html"
```

### Make own image

> TODO

```bash
$ docker build -t my/hugo .
```

## Support http servers

> TODO