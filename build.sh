#!/bin/sh

# 部署目录
APP="/data/myapp/jk.jar"

# 日志目录
LOG_FILE="/data/logs/jk.log"

# 指定端口
PORT="18080"

mvn clean package

cp ./target/*.jar $APP

nohup java -jar --server.port=$PORT $APP > $LOG_FILE 2>&1