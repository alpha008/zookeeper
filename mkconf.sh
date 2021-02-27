#!/bin/sh
rm -rf /home/ubuntu/zookeeper/data/
rm -rf /home/ubuntu/zookeeper/etc/
# 创建数据结点配置文件
mkdir -p /home/ubuntu/zookeeper/etc/zk1/data/
mkdir -p /home/ubuntu/zookeeper/etc/zk2/data/
mkdir -p /home/ubuntu/zookeeper/etc/zk3/data/
mkdir -p /home/ubuntu/zookeeper/etc/zk1/data/logs
mkdir -p /home/ubuntu/zookeeper/etc/zk2/data/logs
mkdir -p /home/ubuntu/zookeeper/etc/zk3/data/logs
cd /home/ubuntu/zookeeper/etc/zk1/data/
touch myid
cd /home/ubuntu/zookeeper/etc/zk2/data/
touch myid
cd /home/ubuntu/zookeeper/etc/zk3/data/
touch myid
echo 1 >>  /home/ubuntu/zookeeper/etc/zk1/data/myid
echo 2 >>  /home/ubuntu/zookeeper/etc/zk2/data/myid
echo 3 >>  /home/ubuntu/zookeeper/etc/zk3/data/myid

mkdir -p /home/ubuntu/zookeeper/conf/
cd /home/ubuntu/zookeeper/conf/
cp -r ../conf_example/* ./
#touch zoo1.cfg
#touch zoo2.cfg
#touch zoo3.cfg