#!/usr/bin/env bash

export JAVA_HOME=$JAVA_HOME
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

PIDFILE=service.pid
ROOT_DIR="$(cd $(dirname $0) && pwd)"
CLASSPATH=./*:$ROOT_DIR/../lib/*:$ROOT_DIR/../conf/
JAVA_OPTS="-Xms256m -Xmx512m -XX:+UseParallelGC"

MAIN_CLASS=com.zhl.Application
if [ ! -d "log" ]; then
    mkdir log
fi
if [ -f "$PIDFILE" ]; then
    echo "Service is already start ..."
else
    echo "Service start ..."
    nohup java $JAVA_OPTS -Dspring.config.location=$ROOT_DIR/../conf/ -cp $CLASSPATH $MAIN_CLASS 1> log/order.out 2>&1 &
    printf '%d' $! > $PIDFILE
    echo "Service  start SUCCESS"
fi