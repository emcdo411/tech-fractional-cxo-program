# Week07 — Day02: Data Contracts, Lineage & Observability (Production‑Grade)

> **CXO Lens:** Private AI is only as trustworthy as its **data plumbing**. Today we codify **contracts, lineage, deletion proofs, and SLOs**—and wire alerts that page humans before CFOs.

---

## Objectives
- Define **data contracts** (schemas, SLAs, owners) for top pipelines.
- Implement **lineage** and **deletion proofs** (audit‑ready).
- Establish **observability SLOs**: freshness, completeness, accuracy, and drift.

---

## Lesson Summary
Data quality must be visible, testable, and explainable. We ship **contract files**, **lineage graphs**, and **SLO dashboards** so model outputs can be defended to auditors, customers, and the board.

---

## Activities (⏱ 75–90 minutes)
1) **Contract Drafting (25m)**  
   - For each critical table/index: schema, allowed ranges, null rules, owner, SLA.
2) **Lineage Map (20m)**  
   - Document source → transform → feature → model → product. Add **evidence links**.
3) **SLO Design (20m)**  
   - Pick SLOs + SLI collection; define alert thresholds and **pager runbook**.
4) **Deletion Proof Flow (10–25m)**  
   - Design request intake → propagation → proof artifact with **timestamp & IDs**.

---

## Deliverables
- `wk07/data_contracts/*.yaml` — one per table/stream/vector index.
- `wk07/lineage/graph.md` — lineage diagram + links.
- `wk07/observability/slo_catalog.md` — SLOs, SLIs, alerting, owners.
- `wk07/privacy/deletion_proof_flow.md` — step‑by‑step SOP.

---

## Acceptance & QA
- Contracts reference **owners** and **on‑call** rotations.
- SLOs cover **freshness, completeness, accuracy** and **model drift**.
- Deletion proof generates an **artifact ID** per request within **≤72h**.

---

## Data Contract (YAML Snippet)
```yaml
name: customer_events_v1
owner: data-platform@company.com
schema:
  customer_id: string
  event_ts: timestamp
  event_type: enum[view, add_to_cart, purchase]
  amount_usd: float >= 0
slos:
  freshness_minutes: 15
  completeness_pct: ">= 99.5%"
  accuracy_checks:
    - rule: amount_usd >= 0
    - rule: event_type in [view, add_to_cart, purchase]
alerts:
  pager: "#data-oncall"
  threshold:
    freshness_minutes: "> 20"
privacy:
  pii: "low"
  deletion_propagation: ["features/customer", "vectors/customer"]
```

