#/bin/sh
/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh stop /usr/local/etc/zookeeper/zoo1.cfg
/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh stop /usr/local/etc/zookeeper/zoo2.cfg
/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh stop /usr/local/etc/zookeeper/zoo3.cfg

/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh start /usr/local/etc/zookeeper/zoo1.cfg
/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh start /usr/local/etc/zookeeper/zoo2.cfg
/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh start /usr/local/etc/zookeeper/zoo3.cfg

/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh status /usr/local/etc/zookeeper/zoo1.cfg
/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh status /usr/local/etc/zookeeper/zoo2.cfg
/home/alpha/zookeeper/apache-zookeeper-3.5.8/bin/zkServer.sh status /usr/local/etc/zookeeper/zoo3.cfg

cat /usr/local/var/run/zookeeper/zk1/data/myid
cat /usr/local/var/run/zookeeper/zk2/data/myid
cat /usr/local/var/run/zookeeper/zk3/data/myid


