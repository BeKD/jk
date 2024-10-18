#!/bin/sh

# 部署目录
APP="/data/myapp/jk.jar"

# 日志目录
LOG_FILE="/data/logs/jk.log"

# 指定端口
PORT="18080"

echo "构建开始..."
mvn clean package
echo "构建结束!"

echo "复制开始..."
cp ./target/*.jar $APP
echo "复制结束!"

nohup java -jar $APP --server.port=$PORT > $LOG_FILE 2>&1
echo "程序启动..."
echo "程序启动成功!"
