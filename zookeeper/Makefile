all:QueryServer
QueryServer:
	gcc -g -Wall QueryServer.c -I/usr/local/include/zookeeper -o QueryServer /usr/local/lib/libzookeeper_mt.a  -pthread
	gcc -g -Wall QueryServerd.c -I/usr/local/include/zookeeper -o QueryServerd /usr/local/lib/libzookeeper_mt.a  -pthread

.PHONY:clean
clean:
	rm -rf  *.o QueryServerd QueryServer
#gcc -g -Wall QueryServer.c -I/usr/local/include/zookeeper -o QueryServer /usr/local/lib/libzookeeper_mt.a  -pthread
#gcc  -I/usr/local/include/zookeeper -L /usr/local/lib/ -static -lzookeeper_mt -o QueryServer.o -c QueryServer.c
#gcc -g -Wall -L/usr/local/lib/ -static -lzookeeper_mt  -o QueryServer QueryServer.o -pthread
#$@ 目标集合
#$< 第一个依赖
#$^ 依赖文件的集合
