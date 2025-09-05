# Week06 — Day01: AI Platform Architecture & SLOs for Scale (CXO Edition)

## Objectives
- Publish a **reference architecture** for multi-LLM, retrieval, and integration at enterprise scale.
- Define **SLOs/SLIs** (latency, availability, quality, cost) and a **capacity/run-cost model**.
- Select **two production patterns** (e.g., RAG for ops knowledge; structured output for finance).

## Lesson Summary
We lock the platform blueprint that balances speed, safety, and cost. SLOs and run-costs become first-class citizens; patterns are standardized for repeatable delivery across teams.

## Activities (⏱ 90 min)
- **Blueprint (30m):** Draft platform layers, shared services, data zones, and trust boundaries.
- **SLO catalog (30m):** Define SLIs and targets; map to monitoring and page routes.
- **Run-cost (30m):** Create a capacity + cost calculator (tokens, calls, embeddings, storage, egress).

## Deliverables
- `platform/ai_platform_blueprint.md`
- `platform/slo_catalog.md`
- `platform/run_cost_model.xlsx`
- `platform/rag_pattern.mmd`

## Acceptance & QA
- Blueprint includes **security controls, tenancy, data residency, and observability**.
- SLO catalog lists **owner, target, measurement, alert route** for each SLI.
- Cost model yields **$/1000 tokens**, **$/request**, and **$/KPI** for the two selected patterns.

## Architecture (Mermaid excerpt)
```mermaid
flowchart LR
  Users --> Copilot
  Copilot --> Orchestrator
  Orchestrator --> Retrieval
  Retrieval --> Models
  Models --> Observability
  Observability --> Dashboards
SLO Catalog (snippet)
SLI	Target	Measure	Owner	Alert
API latency p95	≤ 1200 ms	gateway metrics	SRE	Pager
Answer quality	≥ 4.2/5 SME	eval harness	PM	Slack
Availability	≥ 99.9%	uptime checks	SRE	Pager
Unit cost / req	≤ $0.012	FinOps pipeline	Finance	Email
