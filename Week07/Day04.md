# Week07 — Day04: Platform Economics, FinOps & Exit Ramps

*Save as:* `wk07/day04_platform_economics_finops_exit_ramps.md`

> **CXO Lens (Deloitte-grade):** Innovation wins only if the **unit economics** work. Today we move from “model fees” to **cost per outcome**, wire **spend guardrails** into the platform, and design **exit ramps** so we can switch vendors without a rewrite.

---

## Why this matters (board rationale)

* **Predictability:** CFOs fund programs with **stable run-rates** and clear dials (tokens, depth-k, routing).
* **Speed with discipline:** Real-time spend SLOs let teams ship features without waiting for monthly invoices.
* **Strategic freedom:** Exit ramps prevent vendor lock-in and protect margins during renegotiations.

---

## Target outcomes (this week)

* **Unit cost baseline** for top 3 use-cases at **p95 latency ≤ 1200 ms**.
* **Budget model** with **Optimistic / Base / Conservative** scenarios and monthly caps.
* **Optimization backlog** with quantified savings, owners, and ETAs.
* **Exit ramp** playbook covering **models, embeddings, vectors, prompts, datasets**.

---

## Activities (⏱ 75–90 minutes)

### 1) Cost Model (25m) — from request to invoice

Create a traceable **per-request bill**.

**Unit Cost per Request (UCR)**

$$
\text{UCR} = C_\text{input} + C_\text{gen} + C_\text{retr} + C_\text{rerank} + C_\text{vector I/O} + C_\text{orchestration} + C_\text{HITL}
$$

**Breakdown**

* $C_\text{input} = \frac{\text{prompt\_tokens}}{1000} \times P_\text{in}$
* $C_\text{gen} = \frac{\text{generation\_tokens}}{1000} \times P_\text{out}$
* $C_\text{retr} = \text{queries} \times P_\text{retrieval@k}$
* $C_\text{rerank} = \text{candidates} \times P_\text{rerank}$
* $C_\text{vector I/O} = \text{reads+writes} \times P_\text{vector}$
* $C_\text{orchestration}$ (hosting, tracing, logs) = **allocated** per request
* $C_\text{HITL}$ (if used) = **minutes × rate**

**Trace fields to log per request**
`use_case_id, ts, model_id, prompt_tokens, gen_tokens, depth_k, rerank_n, cache_hit(bool), latency_ms, unit_cost_usd`

> **Deliverable:** `wk07/finops/cost_model.xlsx` with formula tabs & a `cost_trace.md` describing fields.

---

### 2) Scenario Planning (20m)

Model **volume × model mix × retrieval depth × cache-hit** to forecast run-rate.

| Scenario     | Monthly Volume | Model Mix (S/M/L) | Avg depth-k | Cache Hit | p95 Latency | UCR (USD) | Run-rate (USD) |
| ------------ | -------------: | ----------------- | ----------: | --------: | ----------: | --------: | -------------: |
| Optimistic   |           1.2M | 70/25/5           |           3 |       70% |      950 ms |    0.0068 |          8,160 |
| Base         |           800k | 55/35/10          |           5 |       60% |     1100 ms |    0.0092 |          7,360 |
| Conservative |           500k | 40/45/15          |           8 |       45% |     1200 ms |    0.0135 |          6,750 |

> **Deliverable:** `wk07/finops/scenarios.md` with assumptions & sensitivity notes.

---

### 3) Optimization Levers (20m)

Quantify savings; set targets and owners.

| Lever                             | Target                |      Expected Impact | Owner    | ETA |
| --------------------------------- | --------------------- | -------------------: | -------- | --- |
| Prompt compression                | −20% input tokens     |      **UCR −10–15%** | Platform | 2w  |
| Response cap (smart truncate)     | p95 ≤ 350 tokens      |          **UCR −8%** | Product  | 1w  |
| Dynamic routing (S/M/L)           | ≥60% small-model hits |      **UCR −12–18%** | MLOps    | 3w  |
| Cache (semantic + exact)          | Hit-rate ≥ 60%        |      **UCR −20–35%** | Platform | 3w  |
| Depth-k tuning + re-rank          | k from 8 → 4          |   **Retrieval −30%** | Search   | 2w  |
| Batch/streaming                   | p95 ≤ 1200 ms         |     **Latency −15%** | SRE      | 2w  |
| Quantized local model (P95 paths) | 15% of traffic        | **Vendor spend −8%** | ML       | 4w  |

> **Deliverable:** `wk07/finops/optimization_playbook.md` with runbooks & dashboards.

---

### 4) Exit Ramp Design (10–25m)

Abstract the platform so **switching providers** is a config change, not a rewrite.

**Portability checklist**

* **Prompts & templates:** stored in repo, versioned (`/prompts/*.mustache`).
* **Eval datasets:** golden sets in open formats (JSONL/Parquet).
* **Embeddings:** export plan (dim, model, dtype) + **reindex script**.
* **Vectors:** dump & restore across stores; **cosine/L2** parity test.
* **Models:** adapters for OpenAI/Anthropic/**local**; ONNX export where feasible.
* **Orchestration:** interface layer with **retry/backoff**, timeouts, and idempotency keys.
* **Contracts:** API SLAs, data ownership, **egress fees**, audit access.

> **Deliverable:** `wk07/vendor/exit_ramps.md` + `wk07/vendor/adapters/README.md`

---

## Acceptance & QA

* **Top 3 use-cases** meet unit-cost targets at **p95 ≤ 1200 ms** (evidence: dashboards).
* **Scenario workbook** approved; monthly cost caps codified as **spend SLOs**.
* **Optimization backlog** has owners, expected savings, and dates.
* **Exit ramp** validated via **table-top switch drill** (mock vendor outage).

---

## FinOps — reference snippets

**SQL: unit economics roll-up**

```sql
SELECT
  use_case_id,
  COUNT(*) AS requests,
  ROUND(SUM(unit_cost_usd), 2) AS spend_usd,
  PERCENTILE_CONT(0.95) WITHIN GROUP (ORDER BY latency_ms) AS p95_latency_ms
FROM finops.request_trace
WHERE ts >= DATE_TRUNC('month', CURRENT_DATE)
GROUP BY use_case_id
ORDER BY spend_usd DESC;
```

**Python: dynamic routing (toy)**

```python
def route(query_complexity, pii_flag):
    if pii_flag:           # higher guardrails, may require medium model
        return "medium"
    return "small" if query_complexity < 0.4 else ("medium" if query_complexity < 0.7 else "large")
```

**Budget guard (pseudo-policy)**

```yaml
spend_slo:
  use_case: "ops_copilot"
  monthly_cap_usd: 9000
  alerts:
    - threshold: 0.75   # 75% of cap
      action: "notify:#finops, degrade_to_small"
    - threshold: 1.00   # 100% of cap
      action: "disable_large_model, enforce_cache_only"
```

---

## Procurement guardrails (one-pager)

* **Pricing:** transparent per-1K tokens (in/out), retrieval/re-rank fees, egress.
* **SLA:** p95 latency, uptime, support response, incident credits.
* **Data:** ownership, residency, deletion proofs within **≤72h**.
* **Security:** SOC2/ISO, tenant isolation, red-team access.
* **Exit:** export rights, **30-day parallel run**, migration support.

---

## Dashboards

* **Exec:** Run-rate vs. plan; UCR trend; savings unlocked vs. target.
* **Ops:** p95 latency, error rate, cache hit, depth-k distribution.
* **FinOps:** spend by use-case/provider/model; forecast vs. cap; anomaly alerts.

---

## RACI (snapshot)

| Workstream          | R (Doer)               | A (Accountable)  | C (Consulted)     | I (Informed) |
| ------------------- | ---------------------- | ---------------- | ----------------- | ------------ |
| Cost tracing & UCR  | Platform Eng           | Head of Platform | FinOps, Data      | ELT          |
| Scenario model      | FinOps                 | CFO              | Product, Platform | Org          |
| Optimization levers | Platform/MLOps         | CTO              | Product, SRE      | Org          |
| Exit ramp           | Platform + Procurement | COO              | Legal, Security   | ELT          |

---

## Day-end checklist

* [ ] UCR baseline computed; **top 3** use-cases within target or have remediation plan.
* [ ] Scenario workbook reviewed with CFO; **monthly caps** agreed.
* [ ] Optimization backlog with **savings %**, owners, ETAs published.
* [ ] Exit ramp playbook approved; **switch drill** scheduled.

---

## What “great” looks like

* **Boring invoices, happy CFO:** Spend tracks forecast within **±5%**.
* **One-click controls:** Change model mix, depth-k, and cache policy without code changes.
* **Freedom to negotiate:** Exit ramp makes vendor changes **low-risk, two-week** events—not rewrites.

