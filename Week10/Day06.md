Week10 — Day06: Operating Model 3.0 — Org Design & Federated Ownership

Save as: wk10/day06_operating_model_3_0_org_design.md

CXO Lens: We shift from a project to a portfolio with federated product lines and spend guardrails.

Objectives

Define committees, decision rights, spend SLOs.

Activities

Org Map (25m) — Federations, P&L alignment.

Decision Rights (20m) — RACI, freeze rules.

Spend SLOs (20m) — Caps, actions, reviews.

Calendar (10–25m) — Committees cadence.

Deliverables

wk10/org/operating_model_3_0.md

wk10/org/raci.md

wk10/org/spend_slo.yaml

Acceptance & QA

Conflicts resolved; escalation ladder set.

Table — Committee Cadence
Committee	Cadence	SLA
Investment	Bi-weekly	10d
Mermaid — Decision Flow
flowchart LR
  Propose-->Review-->Decide-->Publish
Snippet — Spend SLO (YAML)
use_case: ops_copilot
cap_usd: 9000
thresholds:
  - 0.75: notify
  - 1.00: degrade
Metrics

Decision latency; spend variance; freeze events.

Great

Clear decisions, fast escalations, no surprises.
