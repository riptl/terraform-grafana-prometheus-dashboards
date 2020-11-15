terraform {
  required_version = ">= 0.13"
  required_providers {
    http = {
      source  = "hashicorp/http"
      version = ">= 2.0.0"
    }
    grafana = {
      source  = "grafana/grafana"
      version = ">= 1.7.0"
    }
  }
}
