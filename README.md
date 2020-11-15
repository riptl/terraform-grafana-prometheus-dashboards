# Prometheus Grafana dashboards Terraform module

Terraform module bundling Grafana dashboards for Prometheus components.

![Maintenance Status](https://img.shields.io/badge/maintenance-testing-orange)

## Dashboards

| Name                       | Repository                   | License    |
| -------------------------- | ---------------------------- | ---------- |
| Grafana Overview           | [grafana/grafana]            | Apache-2.0 |
| [Node Exporter Full][1860] | [rfrail3/grafana-dashboards] | LGPL-3.0   |
| [Blackbox Exporter][7587]  | ?                            | ?          |

[1860]: https://grafana.com/grafana/dashboards/1860
[7587]: https://grafana.com/grafana/dashboards/7587

[grafana/grafana]: https://github.com/grafana/grafana/blob/master/grafana-mixin/dashboards/grafana-overview.json
[rfrail3/grafana-dashboards]: https://github.com/rfrail3/grafana-dashboards/blob/master/prometheus/node-exporter-full.json
