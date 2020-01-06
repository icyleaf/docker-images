# aria2

基于 [icyleafcn/alpine](alpine/README.md):3.10 打造的 aria2 + AriaNG

## 变量

- **ARIA2_RPC_SECRET**: 不设置没有 token 要求
- **AUTH_USER**: 登录用户名
- **AUTH_PASS**: 登录密码
- **BT_TRACKERS_URL**: BT Tracker 最佳列表获取地址

**AUTH_USER**, **AUTH_PASS** 同时设置则开启 basic auth
