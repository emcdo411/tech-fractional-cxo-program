# Week07 — Day04: Platform Economics, FinOps & Exit Ramps

> **CXO Lens:** We make AI costs **predictable and defensible**. Shift from “model fees” to **unit economics**, budgets, and **exit ramps** to avoid lock‑in.

---

## Objectives
- Define **unit cost per request** and cost drivers (tokens, retrieval, latency).
- Build a **budget model** with scenarios (optimistic/base/conservative).
- Document **exit ramps** (portable artifacts, API adapters, data egress).

---

## Lesson Summary
Great AI platforms are **boring** to the CFO: predictable costs, traceable invoices, and dials we can turn (compression, caching, batching, routing).

---

## Activities (⏱ 75–90 minutes)
1) **Cost Model (25m)**  
   - Break down cost/request; add p95 latency and cache hit‑rate targets.
2) **Scenario Planning (20m)**  
   - Volumes × model mix × retrieval depth × re‑rank cost.
3) **Optimization Levers (20m)**  
   - Quantize, compress, batch, cache, dynamic routing, prompt size limits.
4) **Exit Ramp Design (10–25m)**  
   - Contracts: data ownership, egress fees; artifact portability checklists.

---

## Deliverables
- `wk07/finops/cost_model.xlsx` — unit economics + scenarios.
- `wk07/finops/optimization_playbook.md` — levers, targets, and owners.
- `wk07/vendor/exit_ramps.md` — portability, SLAs, switch procedures.

---

## Acceptance & QA
- Unit cost **≤ target** at p95 latency **≤ threshold** for top 3 use cases.
- Documented **optimization backlog** with expected savings and ETA.
- Exit ramp covers **models, embeddings, vectors, prompts, datasets**.

---

## Unit Economics (Table)
| Component        | Metric                 | Target       |
|------------------|------------------------|--------------|
| Tokens (gen)     | $/1K tokens            | ↓ 25% Q/Q    |
| Retrieval        | $/query @ depth k      | Governed     |
| Re‑ranking       | $/query                | Governed     |
| Caching          | Cache hit‑rate         | ≥ 60%        |
| Latency          | p95 end‑to‑end (ms)    | ≤ 1200       |

