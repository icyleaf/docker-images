#!/usr/bin/env sh

while true; do
    num=`ps | grep ETMDaemon | grep -v grep | grep -v check | wc -l`  # 计算进程数
    if [ $num -lt 1 ]                                                 # 判断ETMDaemon进程是否存在
        then ./portal                                                 # 重启进程的命令，请相应修改
    fi
    sleep 60
done