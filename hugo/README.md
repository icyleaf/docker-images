# Hugo docker image

Based on [alpine](https://hub.docker.com/_/alpine/):latest docker image for hugo static page generator.

## Environment Variables

- **HUGO_HIGHLIGHT** = `yes/no` (optional to install Pygments for [highlight shortcode](http://gohugo.io/extras/highlighting/).)

## Usage

### Initilaze to create new site

```bash
# Initilaze
$ docker run --name hugo-blog -d -p 1313:1313 -e HUGO_HIGHLIGHT="no" -v /path/to/hugo:/site icyleafcn/hugo hugo new site .
# Change to the path
$ cd /path/to/hugo
# Install a hugo theme, for example:
$ git clone https://github.com/vjeantet/hugo-theme-casper themes/casper
# Run the hugo server
$ docker exec -it hugo-blog hugo server --watch --theme casper
```