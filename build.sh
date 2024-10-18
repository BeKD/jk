#!/bin/sh

# 部署目录
APP_DIR="/data/myapp"

# 日志目录
LOG_DIR="/data/logs"

mvn clean package

cp ./target/*.jar $APP_DIR