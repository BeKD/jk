#!/bin/sh

# 部署目录
APP_DIR="/data/myapp"

# 应用名字
APP_NAME="jk"

# 日志目录
LOG_DIR="/data/logs"

mvn clean package

cp ./target/*.jar $APP_DIR/jk.jar

# nohup java -jar  $APP_DIR/jk.jar >$LOG_NAME 2>&1 &