#!/bin/sh
set -ex

if [ "$1" = 'h2' ]; then
    shift
    cd /opt/h2
    java \
        -Dcom.sun.management.jmxremote \
        -Dcom.sun.management.jmxremote.authenticate=false \
        -Dcom.sun.management.jmxremote.ssl=false \
        -Djava.rmi.server.hostname=127.0.0.1 \
        -Dcom.sun.management.jmxremote.rmi.port=9999 \
        -javaagent:/opt/h2/jmx_prometheus_javaagent.jar=1235:/opt/h2/prometheus.yml \
        -classpath /opt/h2/bin/*.jar org.h2.tools.Server \
        -tcp \
        -tcpAllowOthers \
        -tcpPort 9093 \
        -web \
        -webAllowOthers \
        -webPort 8083 \
        -baseDir /opt/h2-data
fi

exec "$@"