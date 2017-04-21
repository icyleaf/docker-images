# Mariadb

基于 [icyleafcn/alpine](alpine/README.md):latest 镜像配置的 Mariadb 数据库容器。配置基本上是基于官方 mariadb 镜像进行的复制。

- 使用 mysq_install_db 初始化 /var/lib/mysql。
- 使用 su-exec 代替 gosu 启动 mysql 服务。
- 基于容器内存动态生成 mysql.cnf。
- MYSQL_*_FILE 变量支持 docker swarm secrets 特性。

## 变量

- **MYSQL_ROOT_PASSWORD** = Mysql root 密码
- **MYSQL_ALLOW_EMPTY_PASSWORD** = Mysql root 允许空密码
- **MYSQL_RANDOM_ROOT_PASSWORD** = Mysql root 随机密码
- **MYSQL_USER** = Mysql 实例用户名
- **MYSQL_PASSWORD** = Mysql 实例用户密码
- **MYSQL_DATABASE** = Mysql 默认数据库

## 使用

```
docker run -d --name mariadb-instance \
  -e MYSQL_ROOT_PASSWORD=password \
  icyleafcn/mariadb
```

```
docker service create --name mysql-server \
 -e MYSQL_ROOT_PASSWORD_FILE=/run/secrets/mysql_root_password
  ...
  ...
  ...
 icyleafcn/alpine-mariadb
```

更多的使用可参见[官方镜像文档](https://hub.docker.com/_/mysql/)