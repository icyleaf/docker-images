# Mariadb

lean 大神 [lede](https://github.com/coolsnowwolf/lede) 的编译固件工具镜像。

## 使用方法

```
$ docker volume create lede-dl-data
$ docker -p 2015:2015 --name lede-builder -d \
    -v lede-dl-data:/builder/dl \
    -v `PWD`:/builder/bin \
    icyleafcn/lean-lede-builder
```

这时候容器已经准备完毕，后面开始配置编译的选项

```
$ docker exec -it lede-builder make menuconfig
```

保存后开始进行编译

```
$ docker exec -it lede-builder make -j1 V=s
```
