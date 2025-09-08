Week13 — Day05: Business Continuity & DR for AI (Compute, Data, Vectors)

Save as: wk13/day05_bcdr_ai_platform.md

CXO Lens: BlackRock managed liquidity; we manage compute and data continuity. We prove RTO/RPO for model, retrieval, vector store, and orchestration.

Objectives

Define RTO/RPO targets per tier (gold/silver/bronze).

Build failover runbooks (model swap, region fail, vector reindex).

Test cold-start and data corruption drills.

Activities (⏱ 75–90m)

Tiering (25m) — Map use cases to tiers; target RTO/RPO.

Runbooks (20m) — Failover steps with screenshots/logs.

Drills (20m) — Region cutover; corrupted index recovery time.

Contract Addenda (10–25m) — Burst capacity, egress rights, escrow.

Deliverables

readiness/bcdr_tiering_matrix.md • readiness/dr_runbooks/*.md

readiness/drill_reports/*.pdf • vendor/contract_clauses_bcdr.md

Acceptance & QA

Two drills completed: region failover and index corruption within targets.

Evidence attached; lessons → platform backlog.
