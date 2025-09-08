# Week07 — Day01: Value Hypotheses 2.0 & Use‑Case Scoring (Pilot → Platform)

> **CXO Lens:** We stop “cool demos” creep. Every AI idea must clear a **value, risk, and readiness** bar tied to enterprise KPIs. Today we formalize the **investment thesis** for each use case and score them side‑by‑side.

---

## Objectives
- Convert problem statements into **value hypotheses** with explicit ROI math.
- Apply a **scoring model** (Value × Feasibility × Risk) to rank the backlog.
- Produce one‑page **Investment Briefs** ready for Gate reviews (G1→G2).

---

## Lesson Summary
A use case is “real” when it has: a sponsor, a measurable baseline, a defined counterfactual, and a path to production. You’ll build a **Decision Stack** that links business outcomes → metrics → instrumentation → experiment design → release plan.

---

## Activities (⏱ 75–90 minutes)
1) **KPI Mapping (20m)**  
   - Map use cases to board KPIs (Revenue, Margin, Risk, CX) and define **baselines**.
2) **Value Math (25m)**  
   - Fill the value hypothesis: *impact per unit × eligible volume × adoption × confidence*.
3) **Scoring & Prioritization (20m)**  
   - Use the **VFR model**: Value (0–5), Feasibility (0–5), Risk (0–5, inverted). Tie‑break with time‑to‑impact.
4) **Investment Briefs (10–25m)**  
   - Draft one‑pagers with owner, milestones, guardrails, and kill criteria.

---

## Deliverables
- `wk07/investment_briefs/*.md` — one‑pager per use case (template below).
- `wk07/usecase_scores.csv` — ranked list with scores and notes.
- `wk07/kpi_map.md` — board KPIs ↔ telemetry plan.

---

## Acceptance & QA
- Each brief includes **baseline, target, telemetry, and owner**.
- Scores justified with **evidence links** (data pull, user interviews, ops logs).
- Clear **go/no‑go** criterion and **kill switch** per use case.

---

## Investment Brief (Template)
```md
# <Use Case Name>
**Sponsor:** <VP/Director> • **Product Owner:** <Name> • **Quarter:** <Q+1/Q+2>

## Value Hypothesis
- Metric(s): <e.g., AHT ↓, CSAT ↑, revenue ↑>
- Baseline: <value> → Target: <value> by <date>
- Math: impact/unit × volume × adoption × confidence = **${value}/quarter**

## Readiness
- Data contracts: <Y/N> • Privacy requirements: <link> • Integration points: <list>
- Dependencies: <teams, vendor, API> • Feasibility notes

## Risk & Guardrails
- Model risk level: <L/M/H> • PII exposure: <L/M/H>
- Guardrails/tests: <evals, red-team, fallbacks>

## Milestones
- G1→G2 by <date> • First release by <date>
- Kill criteria: <conditions + owner>
```
