ARG CONFLUENT_VERSION=

FROM confluentinc/cp-kafka:${CONFLUENT_VERSION}

# prometheus
COPY prometheus.yml /opt/prometheus/prometheus.yml
ADD https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar /opt/prometheus/jmx_prometheus_javaagent.jar
RUN chmod +r /opt/prometheus/jmx_prometheus_javaagent.jar

EXPOSE 9092 1234
