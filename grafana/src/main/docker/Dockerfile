ARG GRAFANA_VERSION=5.1.4
FROM grafana/grafana:$GRAFANA_VERSION

COPY grafana/datasources /etc/grafana/provisioning/datasources/
COPY grafana/dashboards.yml /etc/grafana/provisioning/dashboards/
COPY grafana/dashboards /etc/grafana/dashboards/

ENV GF_SECURITY_ADMIN_PASSWORD=admin \
    GF_SECURITY_ADMIN_USER=admin \
    GF_PATHS_PROVISIONING=/etc/grafana/provisioning/

EXPOSE 3000