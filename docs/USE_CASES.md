# Multi-cloud SA Toolkit — Use Cases

## 1) Landing Zone Lite baseline (guardrails + logging + cost controls)
Goal: Minimum viable governance for every new account/subscription/project.
Deliverables: use-cases/01-landing-zone-lite/{aws,azure,gcp}
Outputs: baseline_summary.md, logging_endpoints, budget_alerts, enabled_policies

## 2) Environment inventory + auto-documentation (“what’s here and how is it wired?”)
Goal: Map accounts/projects, networks, ingress/egress, key services, IAM boundaries, monitoring coverage.
Deliverables: use-cases/02-inventory-auto-doc/{aws,azure,gcp}
Outputs: inventory.json, SUMMARY.md

## 3) Monitoring & alerting starter pack (golden signals + cloud-native alerts)
Goal: Standardize alerting (latency, errors, saturation, availability) + cost anomaly alerts.
Deliverables: use-cases/03-monitoring-alerting-pack/{aws,azure,gcp}
Outputs: coverage report

## 4) Ephemeral Sandbox Factory (repeatable low-cost environments)
Goal: Short-lived sandboxes for demos/PoCs/customer trials/incident reproduction.
Deliverables: use-cases/04-ephemeral-sandbox-factory/{aws,azure,gcp}

## 5) Identity bootstrap for automation (GitHub Actions → Cloud via OIDC, no long-lived keys)
Goal: Let CI run Terraform safely without storing secrets.
Deliverables: use-cases/05-identity-bootstrap-automation/{aws,azure,gcp}
