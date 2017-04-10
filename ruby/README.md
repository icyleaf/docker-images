# Ruby

基于 [icyleafcn/alpine](alpine/README.md):latest 镜像配置的 ruby 开发环境。

- 构建脚本源于官方 ruby:2.4-alpine 的 [Dockfile](https://github.com/docker-library/ruby/blob/e98bec810e6f1bd88ad0106f2e3b3f3291f5f5bb/2.4/alpine/Dockerfile)
- [ruby](http://cache.ruby-lang.org/pub/ruby) 和 [rubygems](https://gems.ruby-china.org/) 均采用 ruby-china.org 镜像资源。

## 变量

- icyleafcn/alpine [变量](alpine/README.md)
- **RUBY_MAJOR** = `2.4`
- **RUBY_VERSION** = `2.4.1`
- **RUBY_VRUBY_DOWNLOAD_URLERSION** = `https://cache.ruby-china.org/pub/ruby`
- **RUBY_DOWNLOAD_SHA256** = `4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654`
- **RUBYGEMS_VERSION** = `2.6.11`
- **RUBYGEMS_SOURCE** = `https://gems.ruby-china.org/`
- **BUNDLER_VERSION** = `1.14.6`

## 文档

具体使用请直接参考[官方文档](https://hub.docker.com/_/ruby/)。
