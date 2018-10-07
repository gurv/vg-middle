FROM java:8-jre

ARG H2_VERSION=2014-04-05

RUN wget -q http://h2database.com/h2-$H2_VERSION.zip \
  && unzip -qq h2-$H2_VERSION.zip \
  && mv h2 /opt \
  && rm -f h2-$H2_VERSION.zip \
  && mkdir -p /opt/h2-data

# prometheus
COPY src/main/docker/prometheus.yml /opt/h2/
ADD http://central.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.10/jmx_prometheus_javaagent-0.10.jar /opt/h2/jmx_prometheus_javaagent.jar
RUN chmod +r /opt/h2/jmx_prometheus_javaagent.jar

COPY src/main/docker/docker-entrypoint.sh /usr/local/bin/
RUN chmod 777 /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 8083 9093 1235
CMD ["h2"]