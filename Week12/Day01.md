Week12 — Day01: Risk Data Hub & Golden Sources (The “Risk Warehouse” for AI)

Save as: wk12/day01_risk_data_hub_golden_sources.md

CXO Lens: You can’t control what you can’t see. We consolidate telemetry, evals, lineage, spend, and incidents into a single Risk Data Hub—our AI analogue to a BlackRock-style risk warehouse.

Objectives

Define the canonical risk data model (events, metrics, KRIs, limits, decisions).

Stand up Golden Sources and authoritative pipelines (lineage + contracts).

Enable daily Risk MIS from this hub (feeds Week11 MIS & board packs).

Lesson Summary

One schema, one truth. The Risk Data Hub powers limits, stress tests, portfolio views, and audits. Every dashboard traces back to a governed contract and lineage.

Activities (⏱ 75–90m)

Schema & Contracts (25m) — Entities: request_trace, eval_run, cost_trace, incident, limit_breach, decision_log.

Pipelines & Lineage (20m) — Ingest from observability, MRM, FinOps, privacy.

Golden Sources (20m) — Declare authoritative tables and deprecate duplicates.

Access & Controls (10–25m) — Roles for Risk, Audit, Data, Product.

Deliverables

risk_hub/schema.sql • risk_hub/contracts/*.yaml

risk_hub/lineage_map.md • risk_hub/access_policies.md

risk_hub/feeds_catalog.md (producers/consumers, SLAs)

Acceptance & QA

Golden Sources documented with owners and freshness SLOs.

All Week11 MIS fields resolvable from the hub with lineage links.

Data retention & deletion proofs implemented for PII fields.
