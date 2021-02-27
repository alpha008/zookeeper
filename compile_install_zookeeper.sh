#/bin/sh
execpath=$(cd "$(dirname "$0")"; pwd)
echo "current executed path is : ${execpath}"
if type -p java; then
    echo found java executable in PATH
    _java=java
elif [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
    echo found java executable in JAVA_HOME     
    _java="$JAVA_HOME/bin/java"
else
    echo "no java"
fi

if [[ "$_java" ]]; then
    version=$("$_java" -version 2>&1 | awk -F '"' '/version/ {print $2}')
    echo version "$version"
    if [[ "$version" > "1.5" ]]; then
        echo version is more than 1.5
    else         
        sudo add-apt-repository ppa:openjdk-r/ppa
        sudo apt-get update
        sudo apt-get install openjdk-8-jdk
        sudo update-alternatives --config java
    fi
fi
file_source_cppunit="cppunit-1.12.1"
file_cppunit="cppunit-1.12.1.tar.gz"
File_source_zookeeper="apache-zookeeper-3.6.2"
File_zookeeper="apache-zookeeper-3.6.2.tar.gz"
if [ ! -d "$file_source_cppunit" ]; then
    echo ''${file_source_cppunit}' is not exist'
    mkdir -p ${file_source_cppunit}
    cd ${file_source_cppunit}
    wget https://jaist.dl.sourceforge.net/project/cppunit/cppunit/1.12.1/cppunit-1.12.1.tar.gz
    echo 'download '${file_cppunit}' sucess'
    tar -zxvf ${file_cppunit}
    cd  ${file_source_cppunit}
    ./configure LDFLAGS='-ldl'
    make
    sudo  make install
    cd ${execpath}
    echo "------------------------"
    echo ${execpath}
fi
if [ ! -f "$File_source_zookeeper" ]; then
    echo ''${File_source_zookeeper}' is not exist'
    mkdir -p ${File_source_zookeeper}
    cd  ${File_source_zookeeper}
    wget https://downloads.apache.org/zookeeper/zookeeper-3.6.2/apache-zookeeper-3.6.2.tar.gz
    echo 'download '${File_zookeeper}' sucess'
    tar -zxvf  ${File_zookeeper}
    cd ${File_source_zookeeper}
    #mvn clean install
    #mvn javadoc:aggregate
    sudo mkdir -p /usr/local/zookeeper/apache-zookeeper-3.6.2
    sudo cp -r apache-zookeeper-3.6.2 /usr/local/zookeeper/apache-zookeeper-3.6.2
    
    cd /usr/local/zookeeper/apache-zookeeper-3.6.2
    sudo apt install ant
    cd apache-zookeeper-3.6.2/zookeeper-jute
    mvn compile
    cd apache-zookeeper-3.6.2/zookeeper-server
    mvn package -Dmaven.test.skip=true
    cd zookeeper-client/zookeeper-client-c
    sudo autoreconf -if
    sudo ./configure 
    sudo make
    sudo make install
    sudo ldconfig
fi



#https://www.apache.org/dyn/closer.lua/zookeeper/zookeeper-3.6.2/apache-zookeeper-3.6.2.tar.gz
# git clone https://github.com/alpha008/zookeeper.git
#https://sourceforge.net/projects/cppunit/files/cppunit/
#https://jaist.dl.sourceforge.net/project/cppunit/cppunit/1.12.1/cppunit-1.12.1.tar.gz





