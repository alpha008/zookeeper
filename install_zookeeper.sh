#/bin/sh
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo update-alternatives --config java
java -version
File_zookeeper="apache-zookeeper-3.5.8-bin.tar.gz"
if [ ! -f "$File_zookeeper" ]; then
    echo ''${File_zookeeper}' is not exist'
    git clone https://github.com/alpha008/zookeeper_code.git
    echo 'download '${File_zookeeper}' sucess'
fi
if [ ! -d "zookeeper" ]; then
    echo 'zookeeper is not exist'
    mkdir zookeeper
    cp -r zookeeper_code/${File_zookeeper} ./
    rm -rf zookeeper_code
    cd zookeeper
    tar -zxvf apache-zookeeper-3.5.8-bin.tar.gz
    cd apache-zookeeper-3.5.8-bin

fi

# git clone https://github.com/alpha008/zookeeper.git






