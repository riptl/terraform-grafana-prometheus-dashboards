variable "prometheus_data_source" {
  type        = string
  description = "Name of Prometheus data source"
}

variable "grafana_repo_revision" {
  type        = string
  description = "Revision of the Grafana repo from which Grafana dashboard is pulled."
  default     = "b8ad4eaab313a639c11e660fc7f2a3561775f1f0"
}

variable "node_exporter_dashboard_revision" {
  type        = number
  description = "Revision of the \"Node Exporter Full\" dashboard"
  default     = 21
}

variable "blackbox_exporter_dashboard_revision" {
  type        = number
  description = "Revision of the \"Prometheus Blackbox Exporter\" dashboard"
  default     = 3
}
