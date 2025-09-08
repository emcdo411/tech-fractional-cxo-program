Week11 — Day06: Risk MIS, Heatmaps & Breach Process (Run-the-Bank)

Save as: wk11/day06_risk_mis_heatmaps_breach_process.md

CXO Lens: Daily Risk MIS is how you steer. Breaches trigger automatic workflows, not email arguments.

Objectives

Publish daily MIS (heatmap, breaches, trends, actions).

Stand up breach workflow (who, when, rollback, proof).

Define Board pack (monthly).

Activities (⏱ 75–90m)

MIS Design (25m) — KPIs, KRIs, green/yellow/red; owner columns.

Breach Workflow (20m) — Pager escalation; decision log; freeze rules.

Board Pack (20m) — Monthly trends; exceptions; capital at risk.

Dry Run (10–25m) — Simulate two breaches.

Deliverables

risk/mis_daily_template.csv

risk/breach_workflow.md

risk/board_pack_outline.pptx

Breach YAML (sample)
id: BR-2025-11-06-07
metric: "privacy_leakage_probes"
severity: red
triggered_at: "2025-11-06T10:22Z"
actions:
  - "freeze: customer_copilot"
  - "rollback: model=1.3.5"
  - "notify: #airc, CISO, DPO"
  - "open_incident: INC-2025-11-06-15"
eta_for_review: "24h"
