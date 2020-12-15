#/bin/sh
/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh stop /home/ubuntu/zookeeper/conf/zoo1.cfg
/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh stop /home/ubuntu/zookeeper/conf/zoo2.cfg
/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh stop /home/ubuntu/zookeeper/conf/zoo3.cfg

/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh start /home/ubuntu/zookeeper/conf/zoo1.cfg
/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh start /home/ubuntu/zookeeper/conf/zoo2.cfg
/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh start /home/ubuntu/zookeeper/conf/zoo3.cfg

/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh status /home/ubuntu/zookeeper/conf/zoo1.cfg
/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh status /home/ubuntu/zookeeper/conf/zoo2.cfg
/usr/local/zookeeper/apache-zookeeper-3.5.8-bin/bin/zkServer.sh status /home/ubuntu/zookeeper/conf/zoo3.cfg

cat /home/ubuntu/zookeeper/etc/zk1/data/myid
cat /home/ubuntu/zookeeper/etc/zk2/data/myid
cat /home/ubuntu/zookeeper/etc/zk3/data/myid
#mkdir -p input/{1..3}.txt


