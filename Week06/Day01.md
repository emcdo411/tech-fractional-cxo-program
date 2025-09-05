# Week06 — Day01: AI Platform Architecture & SLOs for Scale (CXO Edition)

> CXO Lens (Deloitte-grade): Today we lock a **vendor-neutral, security-forward** AI platform blueprint with **measurable reliability and cost controls**. We define **what “good” looks like** in production using SLOs, error budgets, and a run-cost model tied to business KPIs.

---

## Objectives
- Publish a **reference architecture** for multi-LLM + retrieval + enterprise integration (control plane / data plane separation, zero-trust boundaries, auditability).
- Define a **production SLO catalog** (latency, availability, grounded quality, safety, unit cost) with **SLIs, targets, measurement, error budgets, and paging policy**.
- Build a **capacity & run-cost model** (requests/sec, tokens/request, cache hit rate, embedding/storage/egress) with alert thresholds and executive roll-ups.
- Ratify **two Golden-Path patterns** (e.g., **RAG for Ops Knowledge**, **Structured Output for Finance**) with acceptance tests and change-control gates.

---

## Lesson Summary
A scalable AI platform is an **operating model**, not just components. We codify interoperability (abstraction over LLMs), **safety-by-design** (PII controls, guardrails), **observability** (traces/metrics/evals), and **cost discipline** (unit economics), so teams can ship faster **without** accruing hidden risk.

---

## Activities (⏱ 90 minutes)
1) **Blueprint Workshop (30m)**  
   - Map business capabilities → platform capabilities.  
   - Draw **control plane vs. data plane**, trust zones, and tenancy.  
   - Identify **integration points**: IdP/SSO, API Gateway, Model Router, Vector Store, Feature/Data Lake, CI/CD, Secrets/Key Vault, Observability, FinOps.

2) **SLO Catalog & Error Budgets (30m)**  
   - Define **user journeys** (copilot answer, batch job, retrieval index).  
   - For each: write SLIs, targets, measurement windows, **error budgets**, and **alert routes**.  
   - Draft **runbooks** and **escalation policy**; map to on-call rotations.

3) **Capacity & Cost Modeling (30m)**  
   - Estimate QPS, concurrency, tokens/request, cache hit rate, I/O.  
   - Build unit-cost formulas (inference, embeddings, storage, egress) and **per-KPI cost**.  
   - Set **budget alerts** (70/90/100%), and define **cost guardrails** per environment.

---

## Deliverables
- `platform/ai_platform_blueprint.md` — narrative + diagrams + control/data plane + trust boundaries  
- `platform/slo_catalog.md` — SLIs, targets, windows, error budgets, alert routes, runbooks links  
- `platform/run_cost_model.xlsx` — capacity inputs, unit economics, scenario tabs, KPI roll-ups  
- `platform/patterns/rag_golden_path.md` — inputs, steps, evals, failure modes, acceptance tests  
- `platform/patterns/structured_output_golden_path.md` — schema contract, validators, adjudication  
- `security/model_safety_policy.md` — PII handling, redaction, toxicity/jailbreak checks, logging policy  
- `observability/dashboard_spec.md` — traces, metrics, eval scores, cost, and error-budget burn charts  
- `platform/runbooks/*.md` — incident, failover, model swap, vector index rebuild, cost overrun

---

## Acceptance & QA (evidence-based)
- **Architecture** shows: IdP/SSO, API Gateway, Model Router, Guardrails, Retrieval, Caching, Vector Store, Secrets, CI/CD, Observability, FinOps; with **tenancy & residency** controls.  
- **SLO catalog** lists **Owner, Target, Measurement, Window, Error Budget, Alert Route** and links to **runbooks**; at least **one journey** has a simulated failure tabletop and a working alert.  
- **Run-cost model** computes **$/1k tokens**, **$/request**, **$/KPI** for both patterns with 70/90/100% budget alerts and a one-page exec summary.  
- **Golden-Path ADRs** approved by Platform, Security, and Finance; each includes **acceptance tests** and **rollback steps**.

---

## Reference Architecture (Mermaid)

```mermaid
flowchart LR
  subgraph Client
    U[Users / Apps]
  end

  subgraph Control_Plane
    IDP[IdP/SSO]
    GW[API Gateway]
    MR[Model Router / Policy]
    GL[Guardrails: PII Redact • Safety • Policy]
    OBS[Observability: Traces • Metrics • Evals]
    FIN[FinOps: Cost Telemetry • Budgets]
    CI[CI/CD • Model/Prompt Registry]
    VAULT[Secrets/Key Vault]
  end

  subgraph Data_Plane
    RET[Retrieval Orchestrator]
    VS[(Vector Store)]
    CACHE[(Response Cache)]
    DS[Data Lake / Warehouse]
    EMB[Embeddings Service]
    LLM1[[LLM A]]
    LLM2[[LLM B]]
  end

  U --> GW --> MR --> GL --> RET
  RET --> VS
  RET --> EMB
  RET --> CACHE
  RET --> LLM1
  RET --> LLM2
  MR --> OBS
  GL --> OBS
  RET --> OBS
  GW --> FIN
  MR --> VAULT
  RET --> DS
````

---

## SLO Catalog (snippet)

| User Journey          | SLI                    | Target        | Measure Source            | Window | Error Budget | Owner   | Alert Route |
| --------------------- | ---------------------- | ------------- | ------------------------- | ------ | ------------ | ------- | ----------- |
| Copilot Answer        | API latency p95        | ≤ **1200 ms** | API gateway/APM           | 30d    | 0.1          | SRE     | Pager       |
| Copilot Answer        | Grounded quality (SME) | ≥ **4.2/5**   | Eval harness (golden set) | 30d    | 0.15         | PM      | Slack       |
| Platform Availability | Uptime                 | ≥ **99.9%**   | Synthetic checks          | 30d    | 0.1          | SRE     | Pager       |
| Retrieval Accuracy    | Hit rate               | ≥ **92%**     | Retrieval eval pipeline   | 30d    | 0.15         | Data    | Slack       |
| Cost Efficiency       | Unit cost / request    | ≤ **\$0.012** | FinOps pipeline           | 30d    | n/a          | Finance | Email       |

> **Error budget** = 1 − target (e.g., 99.9% ⇒ 0.1%). Breaches trigger **feature freeze** and a **stability sprint**.

---

## Capacity & Cost Model (formula sketch)

* **Req/sec (qps)** × **tokens/req** × **price/1k tokens** × (1 − **cache\_hit\_rate**) = **inference cost/sec**
* **Embedding cost** = docs/sec × tokens/doc × price/1k tokens
* **Storage cost** = (vector index + logs + artifacts) × \$/GB-mo
* **Egress** = GB/mo × egress \$/GB
* **Per-KPI cost** = (requests for that KPI × unit cost) ÷ KPI count (or revenue driver)

**Alert thresholds:** 70% / 90% / 100% of monthly budget, with auto-generated variance commentary and owner assignment.

---

## Golden-Path Patterns (executive summary)

1. **RAG for Ops Knowledge**

   * **Inputs:** Authenticated user, query, tenant context → **Retrieval → Guardrails → Generation**
   * **Controls:** PII redaction pre-index & pre-response; per-tenant vector namespaces; citations required.
   * **Acceptance tests:** Groundedness ≥ 4.2/5 on golden set; hallucination ≤ 1%; latency p95 ≤ 1200 ms; cache hit ≥ 35%.

2. **Structured Output for Finance**

   * **Inputs:** Financial document/record → **Extraction → JSON Schema Validation → Adjudication**
   * **Controls:** Deterministic validators; schema versioning; human-in-the-loop for exceptions; audit log with checksum.
   * **Acceptance tests:** Field accuracy ≥ 98% (critical fields), reject rate ≤ 3%, DSCR calc latency ≤ 2s, unit cost ≤ \$0.02/record.

---

## Governance, Risk & Compliance (GRC) Essentials

* **PII/Data Residency:** Region-pinned stores; purge APIs; encryption in transit/at rest; tokenization where feasible.
* **Model Risk:** Pre-release evals; **change-control** for prompts/models; rollback to last good; variance tracking.
* **Auditability:** Immutable logs for model/prompt/version, input/output hashes, policy decisions; 12–18 mo retention.
* **Vendor Neutrality:** Abstraction at **Router** layer; portability tests quarterly; ADRs record trade-offs.

---

## RACI (platform decisions)

* **Responsible:** Platform Eng (architecture), SRE (SLOs), Data Eng (retrieval), FinOps (cost)
* **Accountable:** CTO (platform), CISO (controls)
* **Consulted:** Finance, Legal/Privacy, Product, Support
* **Informed:** ELT, Business Unit Leads

---

## Pre-reads & Inputs

* Current traffic & token metrics, incident tickets, top use-cases, compliance constraints, prior cost invoices.

---

## Timebox

* **⏱ 90 min total:** 30 blueprint • 30 SLOs • 30 cost modeling.
* Follow-ups: 48 hours to ratify SLO targets; 5 business days to land dashboards and budget alerts.

---

## What “Great” Looks Like (Harvard/MIT CXO rubric)

* **Clarity:** One page tells the story (diagram + SLO table + cost summary).
* **Control:** Error budgets + runbooks + freeze policy are real, not aspirational.
* **Cost:** Exec dashboard shows **\$/KPI** trend and flags early.
* **Change-ready:** Golden-Paths with tests + rollback remove fear from shipping.

```

::contentReference[oaicite:0]{index=0}
```

