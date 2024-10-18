#!/bin/sh

# 部署目录
APP_DIR="/data/myapp"

# 日志目录
LOG_DIR="/data/logs/jk.log"

mvn clean package

cp ./target/*.jar $APP_DIR/jk.jar

# nohup java -jar  $APP_DIR/jk.jar >$LOG_DIR 2>&1 &