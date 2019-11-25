# Mariadb

lean 大神 [lede](https://github.com/coolsnowwolf/lede) 的编译固件工具镜像。

## 使用方法

因为第一次编译会下载特别多的依赖（不到 500M）并且强依赖全局翻墙的原因，我这里为了后续也能够
缩减编译的时间特意设置了一个 volume 来保存需要下载的依赖。

先来创建一个 volume 用来保存 lede 编译时需要下载的依赖文件
```
$ docker volume create lede-dl-data
```

同时还需要一个 volume 来让宿主机看到生成好的固件文件，我这里以运行命令的当前目录（`PWD`）为例，
如果你需要特定的目录输出按照你的情况做实际修改，比如 `/tmp/lede`：

```
$ docker run -p 2015:2015 --name lede-builder2 -d \
    -v lede-dl-data:/builder/dl \
    -v `PWD`:/builder/bin \
    icyleafcn/lean-lede-builder
```

lede 编译不建议使用 root 和 git 用户，镜像使用了 lede 用户但有可能挂载的 volumes 权限不对，
如果发现不对（应该是 lede:led）需要修正：

```
$ docker exec -it -u root lede-builder chown -R /builder/{bin,dl}
```

这时候容器已经准备完毕，默认镜像会启动一个 HTTP 服务，你可以通过 `http://ip:2015` 访问，
这个的目的第一是防止运行容器需要一直持有同时方便不熟悉的用户通过浏览器可以看到文件结构、方便文件下载和调试。后面开始配置编译的选项：

```
$ docker exec -it lede-builder make menuconfig
```

配置后以默认文件 `.config` 的文件名进行保存，编译时会使用该文件。
执行下面命令再编译成功后固件在当前目录 bin 目录下，因为上面命令挂载了该目录因此会在
执行命令终端根目录看到，通过 `ls` 可以看到。

> `-j N` N 代表多线程数，第一次编译建议设为 1，
>
> `V=s` 编译日志，设置 `V=99` 为详细输出

```
$ docker exec -it lede-builder make -j1 V=s
```

编译单个软件，进入编译选项选择要编译的软件后，如果没有make需执行以下：

```
$ make tools/install
$ make toolchain/install
```

然后编译指定的软件：

```
$ make package/name/compile
```

清理编译时的临时文件

```
$ make dirclean
```
