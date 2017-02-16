#!/bin/sh
cd /tmp
#等待网络连接成功
wget_ok="0"
#rm -f 7620n.tar.gz
rm -f ar71xx.tar.gz

while [ "$wget_ok" = "0" ] 
do 
#wget http://update.adbyby.com/download/7620n.tar.gz
wget http://update.adbyby.com/download/ar71xx.tar.gz
if [ "$?" == "0" ]; then
wget_ok="1"
else
sleep 30
fi
done
#解压、启动adbyby
mkdir -p adbyby 
#tar -zvxf 7620n.tar.gz -C ./adbyby 
tar -zvxf ar71xx.tar.gz -C ./adbyby 
cd ./adbyby/bin
./startadbb

