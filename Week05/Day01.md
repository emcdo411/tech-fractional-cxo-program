# Week05 — Day01: Capital-Backed AI Portfolio & Investment Committee (CXO Edition)

## Objectives
- Convert priority use-cases into **fundable investment cases** (NPV/IRR/Payback; risk-adjusted).
- Establish an **AI Investment Committee (IC)**: charter, cadence, and **stage gates**.
- Allocate capital across a **balanced portfolio**: *Quick Wins*, *Productive Platforms*, *Strategic Bets*.

## Lesson Summary
Ideas don’t ship without capital and gates. Today we turn Month-One shortlists into **financeable narratives**, set **hurdle rates** (financial + non-financial), and publish a **portfolio + budget** the Board can approve. We make evidence explicit, decisions fast, and re-litigation impossible.

## Activities (⏱ 90 min)
- **Hurdle Rates (15m):** Agree discount rate, target IRR, payback window; set **non-financial guardrails** (privacy, safety, brand).
- **Case Drafting (40m):** Build **three** investment briefs with **base / bull / bear** scenarios and sensitivity ranges.
- **Portfolio Balance (20m):** Place items on a **2×2 (Impact × Certainty)**, set **caps per bucket**, call dependencies.
- **IC Mechanics (15m):** Draft **IC charter**, calendar, gate evidence checklist, and **decision SLA**.

## Deliverables
- `finance/ai_investment_thesis.md` — principles, hurdle rates, non-financial guardrails.  
- `finance/ai_portfolio_model.xlsx` — NPV/IRR/Payback; base/bull/bear; sensitivity tabs.  
- `governance/ai_ic_charter.md` — mandate, membership, cadence, gates & evidence.  
- `strategy/portfolio_wall.md` — one-page view by bucket, owner, quarter.

**Optional accelerators**
- `finance/investment_case_template.md` (one-pager case brief)  
- `strategy/portfolio_scoring_rubric.csv` (weights for Impact, Feasibility, Risk, Strategic Fit, Time-to-Impact)

## Acceptance & QA (evidence-based)
- **3 investment cases** include **Problem, Options, CapEx/OpEx, Benefits, Risks, NPV/IRR/Payback**, and **scenario ranges**.
- Portfolio shows **% capital by bucket**, owners, **quarter** timelines, and **top dependencies**.
- **IC charter** lists **gates** with required **evidence** and a **decision SLA** (e.g., ≤ 10 business days).

## Gate Criteria (excerpt)

| Gate                  | Evidence Required                                                     | Owner   | Pass/Fail |
|-----------------------|------------------------------------------------------------------------|---------|-----------|
| **Gate 0 – Intake**   | Problem statement, stakeholders, data availability & ownership         | PMO     | ☐ / ☐     |
| **Gate 1 – Feasibility** | Draft data contract, security screen (DPIA trigger check), baseline KPIs | CTO/CISO| ☐ / ☐     |
| **Gate 2 – Pilot**    | Budget NTE, KPI targets, risk mitigations, **rollback plan**, success/stop-loss | IC      | ☐ / ☐     |
| **Gate 3 – Scale**    | ROI actuals vs plan, **change plan** (training/comms), run cost, **support model (SLOs)** | CFO/IC  | ☐ / ☐     |

## Portfolio Buckets & Investment Guardrails
- **Quick Wins (≤ 90 days):** Clear time savings or revenue unlock; minimal integration risk; **payback ≤ 6–9 months**.
- **Productive Platforms (Quarterly):** Shared capabilities (e.g., ingestion, eval harness, retrieval); **multi-team leverage**.
- **Strategic Bets (1–3 yrs):** Durable moats; **staged funding** with kill criteria and independent reviews.

**Financial guardrails:** Discount rate `X%`, target IRR `≥ Y%`, payback `≤ Z months`.  
**Non-financial guardrails:** Privacy (PII minimization & residency), safety (red-team pass, no Sev-1), brand (accuracy/claims limits).

---

## Drop-in Templates

### 1) `finance/ai_investment_thesis.md`
```markdown
# AI Investment Thesis
**Version:** 1.0 | **Effective:** YYYY-MM-DD | **Owners:** CFO, CTO, CPO

## Principles
- Fund **compounding capabilities**; prove value in **≤ 90 days** where possible.
- Balance **Quick Wins / Platforms / Strategic Bets** to de-risk and sustain.

## Hurdle Rates
- **Discount rate:** <X%> | **Target IRR:** ≥ <Y%> | **Payback window:** ≤ <Z months>

## Non-Financial Guardrails
- Privacy & Residency, Security & Model Risk, Brand safety, Accessibility.

## Portfolio Construction
- Capital caps per bucket; max exposure per single bet; dependency notes.

## Stage Gates & Evidence
- Gate 0–3 with explicit evidence (see IC Charter). **Decision SLA:** ≤ 10 business days.

## Reporting
- Monthly IC pack: spend vs plan, ROI actuals, risk exceptions, kill/scale moves.
````

### 2) `governance/ai_ic_charter.md`

```markdown
# AI Investment Committee (IC) Charter
**Mandate:** Allocate capital to AI initiatives that meet financial and governance hurdles and deliver measurable value.

## Composition & Cadence
- Members: CFO (Chair), CTO, CPO, CISO, GC, PMO Lead
- Cadence: Bi-weekly; special sessions as needed

## Authority & Scope
- Approve Gate 2–3; set budgets NTE; enforce guardrails; stop/kill authority.

## Gates & Required Evidence
- **G0 – Intake:** Problem, stakeholders, owner, data availability.
- **G1 – Feasibility:** Data contract draft, DPIA trigger check, baseline KPIs.
- **G2 – Pilot:** Budget NTE, KPI targets, mitigations, rollback plan, success/stop-loss.
- **G3 – Scale:** ROI actuals vs plan, change plan, run cost, support model.

## Decision SLA
- Complete/Reject/Revise within 10 business days; reasons logged in Decision Log.

## Records & Transparency
- Decisions recorded in `governance/decision_log.md`; monthly portfolio update to Board.
```

### 3) `finance/investment_case_template.md`

```markdown
# Investment Case — <Use Case / Program>
**Owner (R):** <Name> | **Approver (A):** IC | **Consult (C):** <Roles> | **Inform (I):** <Roles>

## Problem / Outcome
<3–5 sentences on the business outcome at stake and why now.>

## Options
- A) <Vendor/Build>; B) <Alt>; C) <Do Nothing> — trade-offs stated.

## Financials (Base / Bull / Bear)
- **CapEx:** $ / **OpEx (yr1):** $ / **Run-rate (yr2+):** $
- **Benefits:** Revenue lift / Cost savings / Risk avoidance (with assumptions)
- **NPV / IRR / Payback:** <values per scenario>

## Non-Financial Guardrails
Privacy/safety/brand checks; DPIA trigger; model risk score.

## Risks & Mitigations
Top 3 with owners and dates.

## KPI Targets & Stop-Loss
- Target KPIs and **thresholds to stop/pivot**.

## Gate Ask
- Seeking **G2 – Pilot** approval with **Budget NTE $** and **dates**.
```

### 4) `strategy/portfolio_wall.md` (example layout)

```markdown
# Portfolio Wall (Qx–Qy)
| Use Case / Capability       | Bucket    | Owner  | Quarter | CapEx | OpEx (Yr1) | NPV (Base) | IRR | Gate | Notes                 |
|-----------------------------|-----------|--------|---------|------:|-----------:|-----------:|----:|------|-----------------------|
| Meeting Notes → Actions     | Quick Win | Ops    | Q4      |  20k  |       15k  |       180k | 65% | G2   | 10 hrs/wk saved       |
| Ingestion + Contracts       | Platform  | Data   | Q4–Q1   |  80k  |       60k  |       520k | 42% | G2   | Enables board KPIs    |
| Customer Copilot            | Strategic | Product| Q1–Q3   | 200k  |      180k  |       1.2M | 35% | G1   | Guardrails critical   |
```

### 5) `strategy/portfolio_scoring_rubric.csv` (weights sum to 1.0)

```csv
Criterion,Weight,Definition,Scoring Guide (1-5)
Impact,0.30,Revenue lift / cost savings magnitude,1=low 5=transformational
Feasibility,0.20,Data readiness + technical difficulty,1=hard 5=easy
Risk,0.15,Regulatory/model/operational,1=high 5=low
Strategic Fit,0.20,Alignment to thesis/moat,1=weak 5=core
Time-to-Impact,0.15,Time to first measurable outcome,1=>6mo 5=<6w
```

---

## Financial Notes (for `ai_portfolio_model.xlsx`)

* **Inputs:** CapEx, OpEx (Yr1), Run-rate (Yr2+), revenue/cost assumptions by scenario.
* **Outputs:** NPV (discount rate `X%`), IRR, Payback (months).
* **Sensitivity:** ±10–20% on benefits & costs; unit-economics tab (e.g., \$/call, \$/token).
* **Risk-adjustment:** Apply probability weights to Base/Bull/Bear for expected value.

## Decision Hygiene

* **Decision Log:** Each IC decision recorded with **R/A/C/I**, evidence links, and **time-bound ask**.
* **Stop-Loss:** Pre-commit to **kill/pivot thresholds** (e.g., reliability `< 98%` for two consecutive months).
* **Transparency:** Monthly **IC pack → ELT/Board**: spend vs plan, ROI actuals, exceptions, changes.

## Timebox

* **⏱ 90 min total:** 15 hurdle rates • 40 case briefs • 20 portfolio • 15 IC charter.

## Next Steps

1. Finalize **three** investment cases and submit **G2** asks (pilot) with **Budget NTE** and **dates**.
2. Publish **portfolio wall** and **IC calendar**.
3. Schedule month-end **IC pack** review with CFO/Chair.

```
::contentReference[oaicite:0]{index=0}
```

