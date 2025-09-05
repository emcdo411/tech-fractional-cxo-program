# Week06 — Day04: Experimentation, Causal Inference & Guardrail Metrics (CXO Edition)

> **CXO Lens (Deloitte-grade):** We stop shipping on anecdotes. Every AI change ships behind **pre-registered hypotheses**, **powered experiments**, and **guardrails** that protect users, brand, and cost. Results are **immutable, reproducible, and auditable**.

---

## Objectives
- Stand up a **complete A/B framework** (assignment, telemetry, analysis, decision memo) with **power ≥ 0.8** and **pre-registration**.
- Define **primary outcomes** tied to business value (not vanity), plus **causal reads** (CUPED / diff-in-diff / instrumental variants when needed).
- Publish **guardrail metrics** (safety, fairness, quality, latency, unit cost) with **halt & rollback** criteria and ownership.

---

## Lesson Summary
We encode a **scientific method for AI**: hypothesize → power → randomize → monitor guardrails → analyze (effect size + CI) → decide → document. We prefer **minimally sufficient experimentation** (simple where possible), but we’re ready with **variance reduction** and **sequential controls** for fast, safe decisions.

---

## Activities (⏱ 90 minutes)
1) **Design (30m)**  
   - Write 1–2 **primary metrics** (e.g., *grounded answer rate*, *task time saved*), 2–3 **secondaries** (e.g., CSAT, retention proxy).  
   - Choose design: **between-subjects A/B**, **switchback**, or **interleaving** (for ranking).  
   - Do **power analysis**; consider **CUPED** for variance reduction.

2) **Guardrails (30m)**  
   - Safety (toxicity, PII leakage, jailbreak) with **zero-tolerance thresholds**.  
   - Equity/fairness (disparity ratios across protected segments).  
   - Quality (SME/LLM-judge), latency (p95), **unit cost** ceilings.  
   - Define **halt → rollback** path and comms.

3) **Lifecycle (30m)**  
   - **Pre-register** hypothesis & analysis plan; freeze metrics.  
   - Randomize, monitor **early guardrails** only (no peeking).  
   - Analyze → **decision memo** → archive to **experiment registry**.

---

## Deliverables
- `experiments/ab_testing_framework.md` — design cookbook, assignment, sequential policy  
- `experiments/guardrail_metrics.md` — definitions, thresholds, owners, escalation  
- `experiments/sample_size_calc.xlsx` — baseline, MDE, power, CUPED option  
- `experiments/launch_checklist.md` — privacy, on-call, rollback, help content  
- `experiments/experiment_registry.csv` — ID, variant, dates, decision, links  
- `experiments/analysis_template.ipynb` — effect size, CI, p / Bayesian alt, CUPED  
- `runbooks/experiment_halt_rollback.md` — triggers, steps, roles, comms

---

## Acceptance & QA (evidence-based)
- One experiment **pre-registered** with **power ≥ 0.8** and fixed primary metrics/MDE.  
- **Guardrails live** with paging and a **tested rollback** (tabletop).  
- **Analysis template** outputs **effect size, CI, p (or posterior)**, guardrail outcomes, cost deltas, and a signed **decision memo**.  
- Results + raw code/notebook **archived & immutable**; registry updated.

---

## Experiment Architecture (Mermaid)
```mermaid
flowchart LR
  Hypo[Hypothesis + MDE + Power] --> PreReg[Pre-Register Plan]
  PreReg --> Assign[Randomization / Switchback / Interleaving]
  Assign --> Run[Run & Log Telemetry]
  Run --> Guard[Guardrail Monitor]
  Guard -- Breach --> Halt[Halt + Rollback]
  Guard -- OK --> Analyze[Analysis (CUPED/AB)]
  Analyze --> Decide{Ship?}
  Decide -- Yes --> Launch[Promote + Comms]
  Decide -- No --> Rollback
  Launch --> Archive[Registry + Immutable Results]
  Rollback --> Archive
````

---

## Primary & Guardrail Metrics

### Outcome candidates (choose 1–2 primaries)

* **Task time saved (sec)** vs control (lower is better)
* **Grounded answer rate** (SME/LLM-judge ≥ 4/5 with valid citations)
* **Completion rate** for targeted workflow (binary)
* **Revenue / cost KPI** proxy (e.g., tickets resolved / agent hour)

### Guardrails (example table)

| Metric                   | Threshold     | Owner   | Escalation                        |
| ------------------------ | ------------- | ------- | --------------------------------- |
| Toxicity rate            | ≤ **0.5%**    | QA Lead | Page **SecOps** ≥ Sev-2           |
| Sensitive data leak      | **0**         | CISO    | **Sev-1 halt** (instant rollback) |
| Equity disparity ratio\* | ≥ **0.8**     | Risk    | Ethics Board review               |
| Latency p95              | ≤ **1200ms**  | SRE     | Pager                             |
| Unit cost / request      | ≤ **\$0.012** | FinOps  | Email + weekly cost review        |

\* disparity ratio = min(segment metric)/max(segment metric) on primary.

---

## Power & Sample Size (quick guide)

**Two-sample proportion (approx):**

$$
n \approx \frac{2 \cdot (z_{1-\alpha/2}+z_{1-\beta})^2 \cdot \bar{p}(1-\bar{p})}{\text{MDE}^2}
$$

where $\bar{p}$ is baseline proportion, **MDE** is minimum detectable effect, $\beta$ is (1−power).

**CUPED adjustment (variance reduction):**

$$
Y' = Y - \theta(X - \mu_X),\quad \theta = \frac{\text{Cov}(Y, X)}{\text{Var}(X)}
$$

Use pre-period metric $X$ to reduce variance and sample size.

**Sequential control:** use **alpha spending** or **O’Brien-Fleming** boundaries if peeking is required.

---

## Assignment & Telemetry

**Randomization (SQL sketch):**

```sql
-- Stable hash assignment (50/50)
SELECT
  user_id,
  CASE WHEN mod(abs(hash(user_id || experiment_id)), 100) < 50
       THEN 'A' ELSE 'B' END AS variant
FROM traffic
WHERE eligible = TRUE;
```

**Telemetry schema (excerpt):**

```yaml
event: experiment_observation
fields:
  experiment_id: string
  user_id: hash
  variant: A|B|interleaved
  timestamp: iso8601
  primary_outcome: float|bool
  sec_outcomes: { grounded_judge: float, csat: float }
  guardrails: { toxicity: bool, pii: bool, latency_ms: int, unit_cost: float }
  covariates: { pre_period_time: float, segment: string }
  environment: prod|staging
```

---

## Analysis Template (contents)

* **Checks:** balance (A vs B), missingness, outliers, power achieved.
* **Effect size:** difference in means/proportions; **Hedges’ g** for continuous.
* **Intervals:** 95% CI; **non-inferiority** where relevant.
* **Variance reduction:** CUPED (document θ & R²).
* **Sensitivity:** winsorization, subgroup reads, **multiple testing** controls (BH).
* **Decision:** ship / hold / iterate, with **risk & cost commentary**.

---

## Launch Checklist (highlights)

* ✅ Privacy & DLP checks passed; data residency confirmed
* ✅ On-call updated; **rollback switch + owner** defined
* ✅ Guardrail monitors live; paging tested
* ✅ Help/FAQ & change notes published; sales/support briefed
* ✅ Decision memo template linked; **registry ID reserved**

---

## RACI

* **Responsible:** Product Analytics (design & analysis), SRE (monitoring), MLOps (instrumentation)
* **Accountable:** VP Product / Head of Platform AI
* **Consulted:** Security/Privacy, Risk & Ethics Board, FinOps, Legal
* **Informed:** ELT, Customer Success, Support

---

## Governance & Compliance

* **Pre-registration** locked before data collection; changes require **addendum**.
* Results + code are **write-once** (WORM storage) for **12–24 months**.
* **Fairness review** required if exposure crosses threshold (e.g., ≥100k users/month).

---

## What “Great” Looks Like (Harvard/MIT CXO rubric)

* **Powerful & pre-registered:** primary metrics frozen; MDE realistic; power ≥ 0.8.
* **Guarded:** automatic halt/rollback on safety or cost breach.
* **Causal:** variance reduced; confounders addressed; effect interpretable.
* **Documented:** decision memo tells the story in one page (effect, CI, risk, \$\$\$).

---

## Timebox & Follow-ups

* **⏱ 90 min total:** 30 design • 30 guardrails • 30 lifecycle.
* **T+48h:** sample size sheet + prereg + monitors live.
* **T+7d:** first experiment completed with archived notebook and decision memo.

```
::contentReference[oaicite:0]{index=0}
```
