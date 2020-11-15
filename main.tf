data "http" "grafana_overview" {
  url = "https://raw.githubusercontent.com/grafana/grafana/${var.grafana_repo_revision}/grafana-mixin/dashboards/grafana-overview.json"
}

resource "grafana_dashboard" "grafana_overview" {
  config_json = data.http.grafana_overview.body
}

data "http" "node_exporter" {
  url = "https://grafana.com/api/dashboards/1860/revisions/${var.node_exporter_dashboard_revision}/download"
}

resource "grafana_dashboard" "node_exporter" {
  config_json = data.http.node_exporter.body
}

data "http" "blackbox_exporter" {
  url = "https://grafana.com/api/dashboards/7587/revisions/${var.blackbox_exporter_dashboard_revision}/download"
}

locals {
  blackbox_exporter_dashboard = replace(data.http.blackbox_exporter.body, "/\\$${DS_SIGNCL-PROMETHEUS}/", var.prometheus_data_source)
}

resource "grafana_dashboard" "blackbox_exporter" {
  config_json = local.blackbox_exporter_dashboard
}
