# BandwagonHost Cloud Exporter

基于 [weiqiang333/bandwagonhost_cloud_exporter](https://github.com/weiqiang333/bandwagonhost_cloud_exporter) 仓库的源码封装的 Docker 容器。

## 变量

- **MERTRICS_ADDRESS** = `:9103` 适用于 Prometheus

## 配置文件

```yaml
# Source: https://github.com/weiqiang333/bandwagonhost_cloud_exporter/blob/main/config/bandwagonhost_cloud_exporter.yaml

bandwagonhost:
  getinfo_url: https://api.64clouds.com/v1/getServiceInfo
  server_api_key:
    - address: 1.2.3.6
      veid: 12345678
      key: private_xxxxxxxxx
    - address: 2.3.6.9
      veid: 12345678
      key: private_xxxxxxxxx
```

## 使用

```bash
$ docker run --name bandwagonhost-exporter \
  -v config.yml:/etc/bandwagonhost_cloud_exporter/config.yaml \
  -p 9103:9103 \
  icyleafcn/bandwagonhost-exporter
```
