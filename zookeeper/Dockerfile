ARG CONFLUENT_VERSION=

FROM confluentinc/cp-zookeeper:${CONFLUENT_VERSION}

# prometheus
COPY prometheus.yml /usr/app/prometheus.yml
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar /usr/app/jmx_prometheus_javaagent.jar
RUN chmod +r /usr/app/jmx_prometheus_javaagent.jar

EXPOSE 2181
