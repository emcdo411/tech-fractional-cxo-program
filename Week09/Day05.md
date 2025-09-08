Week09 — Day05: Disaster Recovery & Business Continuity for AI Platforms

Save as: wk09/day05_dr_bc_for_ai_platforms.md

CXO Lens: DR/BC turns “what if” into “we did.” We prove we can lose a region/vendor and still deliver.

Objectives

Set RPO/RTO for vectors, models, embeddings, orchestration.

Drill failover and restore with evidence.

Activities

DR Matrix (25m) — Targets per component; backup cadence.

Failover Drill (25m) — Region/vendor outage simulation.

Restore SOP (15m) — Cold/warm start; cache rebuild.

Comms (10–25m) — IC roles; status pages; customer note.

Deliverables

wk09/drbc/dr_matrix.md

wk09/drbc/failover_drill.md

wk09/drbc/restore_sop.md

wk09/drbc/comm_templates.md

Acceptance & QA

Meet RTO ≤ 60m, RPO ≤ 15m in drill.

Postmortem with fixes and owners within 7 days.

Table — DR Targets (excerpt)
Component	RPO	RTO
Vector Store	15m	60m
Orchestration	5m	15m
Mermaid — Failover
sequenceDiagram
  participant User
  participant NA
  participant EU
  User->>NA: Request
  NA--xUser: Outage
  User->>EU: Retry via Geo-DNS
  EU-->>User: Response
Snippet — Backup Policy (YAML)
vectors:
  snapshot: hourly
  retain: 7d
models:
  registry_backup: daily
  retain: 30d
Metrics

Drill success rate; restore time; incident comms time.

Checklist




Great

Customers barely notice; finance applauds resilience.
