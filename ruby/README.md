# Ruby

基于 [icyleafcn/alpine](alpine/README.md):3.7 镜像配置的 ruby 开发环境。

- 构建脚本源于官方 ruby:2.5-alpine3.7 的 [Dockfile](https://raw.githubusercontent.com/docker-library/ruby/6bccf4bd0c6aa158b4a842c29f78c335ec9dc41b/2.5/alpine3.7/Dockerfile)
- [ruby](http://cache.ruby-lang.org/pub/ruby) 和 [rubygems](https://gems.ruby-china.org/) 均采用 ruby-china.org 镜像资源。

## 变量

- icyleafcn/alpine [变量](alpine/README.md)
- **RUBY_MAJOR** = `2.5`
- **RUBY_VERSION** = `2.5.0`
- **RUBY_VRUBY_DOWNLOAD_URLERSION** = `https://cache.ruby-china.org/pub/ruby`
- **RUBY_DOWNLOAD_SHA256** = `1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b`
- **RUBYGEMS_VERSION** = `2.7.6`
- **RUBYGEMS_SOURCE** = `https://gems.ruby-china.org/`
- **BUNDLER_VERSION** = `1.16.1`

## 文档

具体使用请直接参考[官方文档](https://hub.docker.com/_/ruby/)。
