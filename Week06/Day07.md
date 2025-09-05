# Week06 — Day07: Executive Readout — Operating Model 2.0 & Roadmap Q+2 (CXO Edition)

> **CXO Lens (Deloitte-grade):** We close the week with **decisions, owners, and dates**. The Operating Model 2.0 turns Week06 standards into **how we run**: roles, cadences, budgets, guardrails, and a Q+2 roadmap aligned to **SLOs, cost envelopes, and risk controls**.

---

## Objectives
- Present **Week06 outcomes**; ratify **Operating Model 2.0** (roles, cadences, budgets, decision rights).
- Refresh **OKRs** and approve the **Q+2 roadmap**; reallocate capital to winners and kill low-yield bets.
- Confirm **hiring and upskilling plan** and tighten **cross-functional governance**.

---

## Lesson Summary
Execution scales when **accountability** meets **evidence**. We publish the operating calendar, committee charters, a single view of OKRs and risks, and a resource plan tied to value. Every item has a **who, what, when, and proof**.

---

## Activities (⏱ 75–90 minutes)
1) **Readout (20m)**  
   - Wins, misses, exceptions; ROI vs plan; SLO and cost posture.
2) **Model 2.0 (25m)**  
   - RACI, calendar, committees, decision rights; tooling and data ownership.
3) **Roadmap Q+2 (25m)**  
   - Priorities, dependencies, risk register; capital shifts; kill list.
4) **People (10–20m)**  
   - Hiring plan, enablement calendar, champions.

---

## Deliverables
- `exec/week06_readout.md` — highlights, metrics, decisions, actions  
- `exec/org_design_2_0.md` — RACI, committees, calendar, decision rights  
- `exec/okr_refresh.md` — objectives, KRs, targets, owners, evidence links  
- `exec/roadmap_qplus2.md` — Q+1 and Q+2 plan with dependencies and budgets  
- `exec/resource_plan.md` — headcount, roles, timing, cost; training plan  
- `governance/decision_log.md` — IDs, asks, evidence, due dates

---

## Acceptance & QA (evidence-based)
- **All decisions** recorded in `governance/decision_log.md` with **time-bound asks** and evidence links.  
- Roadmap aligns to **SLOs, cost envelopes, risk gates**; capital shifts documented.  
- **Resource plan** approved (budget, headcount, enablement dates) with owners.

---

## Executive Readout Flow (Mermaid)

```mermaid
flowchart LR
  prep["Prep packs and metrics"] --> readout["Exec readout"]
  readout --> decide{"Decision"}
  decide --|Approve|--> commit["Record decisions and owners"]
  decide --|Revise|--> iterate["Revise plan"]
  decide --|Reject|--> backlog["Move to backlog"]
  commit --> publish["Publish calendar and OKRs"]
  publish --> execute["Execute and track"]
  execute --> review["Monthly review"]
````

---

## Operating Model 2.0 — Core Decisions

### Committees and Cadences

| Committee            | Mandate                             | Cadence          | SLA to Decide        |
| -------------------- | ----------------------------------- | ---------------- | -------------------- |
| Investment Committee | Gate 2–3 approvals, capital shifts  | Bi-weekly        | ≤ 10 business days   |
| AI Safety Board      | Guardrails, incidents, red-team     | Monthly + ad-hoc | 48h incident review  |
| Data Governance      | Contracts, lineage, deletion proofs | Monthly          | 7d contract review   |
| CAB                  | Change approvals and rollback proof | Weekly           | 24h emergency window |

### Decision Rights (examples)

* **Product Owner:** Backlog order within budget and guardrails.
* **Platform Owner:** Model and prompt releases within SLO and cost budgets.
* **CISO:** Final say on privacy, residency, and Sev-1 response.
* **CFO:** Run-rate and capital allocation changes.

### RACI (snapshot)

| Workstream               | R                 | A          | C                 | I   |
| ------------------------ | ----------------- | ---------- | ----------------- | --- |
| Retrieval pattern & SLOs | Platform          | CTO        | Security, Product | ELT |
| Experiments & guardrails | Product Analytics | VP Product | Risk, Legal       | ELT |
| Cost & budget alerts     | FinOps            | CFO        | Platform          | Org |
| Vendor governance        | Procurement       | COO        | Legal, Security   | Org |

---

## OKR Refresh (template)

**Objective 1: Ship trusted copilots that save time and reduce risk**

* **KR1:** Task time saved ≥ **30%** on top 3 workflows (evidence: A/B registry)
* **KR2:** Grounded answer rate ≥ **4.2/5** with citations; hallucinations ≤ **1%**
* **KR3:** Unit cost per request ≤ **\$0.012** at p95 latency ≤ **1200 ms**

**Objective 2: Make data trustworthy and auditable**

* **KR1:** **100%** of Board KPIs backed by contracts and lineage
* **KR2:** **100%** of deletion requests with proof in **≤ 72h**
* **KR3:** Vector store tenant isolation test passes **quarterly**

---

## Roadmap Q+2 (structure)

| Item                 | Bucket    | Owner     | Quarter | Budget | Gate  | SLO/Cost Link      | Risk |
| -------------------- | --------- | --------- | ------- | -----: | ----- | ------------------ | ---- |
| Ops copilot rollout  | Quick Win | Ops       | Q+1     |    60k | G3    | Latency, unit cost | Low  |
| Retrieval re-rank v2 | Platform  | Data/Plat | Q+1     |    90k | G2    | Groundedness       | Med  |
| Customer copilot     | Strategic | Product   | Q+2     |   250k | G1→G2 | Guardrails         | High |

**Kill list:** Items below hurdle rates or failing guardrails with no path to fix.

---

## Resource Plan (excerpt)

| Role              | FTE | Start | Cost | Notes                             |
| ----------------- | --: | ----- | ---: | --------------------------------- |
| Platform Engineer |   2 | Q+1   | 320k | Retrieval, routing, observability |
| Data Engineer     |   1 | Q+1   | 160k | Contracts, lineage, ingestion     |
| Product Analyst   |   1 | Q+1   | 140k | Experiments, guardrails           |
| Enablement Lead   | 0.5 | Q+1   |  70k | Training, champions               |

**Enablement:** monthly clinics, office hours, champions per function.

---

## Decision Log Entry (example)

```yaml
id: DEC-2025-09-07-01
title: Approve Operating Model 2.0 and Q+2 roadmap
owner: COO
evidence:
  - exec/week06_readout.md
  - exec/org_design_2_0.md
  - exec/roadmap_qplus2.md
ask: Approve committees, calendar, capital shifts, and hires
due: 2025-09-12
status: Approved
```

---

## Dashboards

* **Exec:** value and ROI vs plan
* **Ops:** SLOs and incidents
* **Finance:** cost per request, budget burn, variance
* **Safety:** guardrail hits, Sev-levels, actions

---

## What “Great” Looks Like (Harvard/MIT CXO rubric)

* **Decided:** Clear yes/no with owners and dates; no open-ended “consider”.
* **Aligned:** OKRs, roadmap, budget, and headcount tie to SLOs and guardrails.
* **Auditable:** Decision log + artifacts + evidence in a single place.
* **Adaptable:** Freeze rules, kill criteria, and capital shifts are explicit.

---

## Timebox & Follow-ups

* **⏱ 75–90 min:** 20 readout • 25 model • 25 roadmap • 10–20 people
* **T+24h:** publish readout pack and updated calendars
* **T+72h:** decision log fully updated; hiring kicks off; OKR dashboards live

```
::contentReference[oaicite:0]{index=0}
```
