# Week07 — Day01: Value Hypotheses 2.0 & Use-Case Scoring (Pilot → Platform)

> **CXO Lens:** We end “interesting demo theater.” Every AI idea must clear a **value, risk, and readiness** bar tied to board-level outcomes. Today we turn ideas into **investment theses** and rank them side-by-side using a transparent scoring model your Investment Committee can ratify.

---

## Why this matters (board-room rationale)

* **Capital discipline:** AI capacity is finite (talent, budget, data). A clear, repeatable scoring model keeps us from funding the loudest request and focuses us on **payback, time-to-impact, and risk**.
* **Execution velocity:** When value math, telemetry, and kill criteria are defined up front, pilots move faster—and we stop zombie projects.
* **Regulatory defensibility:** Documented value hypotheses and guardrails show the board, auditors, and regulators that AI decisions are **evidence-led**.

---

## Anti-patterns we’re eliminating

* “We’ll measure later.” → **No** telemetry = no pilot.
* “We’ll see what the model can do.” → **No** problem framing = no backlog slot.
* “It helps productivity… somehow.” → **No** ROI math = no funding.
* “We’ll fix data when we scale.” → **No** data contract/readiness = gate fail.

---

## Objectives (expanded)

* Convert problem statements into **value hypotheses** with **explicit ROI math** (assumptions + sources).
* Apply a **VFR model** (Value × Feasibility × Risk-adjust) to rank the use-case backlog with **tie-breakers** (time-to-impact, dependency load).
* Produce **Investment Briefs** that are decision-ready for G1→G2.

---

## What “good” looks like (rubric)

* **Value** quantified with: baseline, target, adoption, and a *counterfactual* (what happens if we do nothing).
* **Feasibility** evidenced by: data contracts, system integration points, security posture, and a staffed owner.
* **Risk** mapped to: model risk class, PII/PHI exposure, safety tests, fallback/rollback plan.
* **Readiness** proven by: instrumentation plan (events, metrics), experiment design, and first-release path.

---

## The Decision Stack (from outcome to release)

1. **Business outcome** → Which board KPI moves? (Revenue ↑, Margin ↑, Risk ↓, CX ↑)
2. **Metric design** → Exact metric, baseline, target, source system, and calculation logic.
3. **Instrumentation** → Events and logs needed, where they live, who owns them.
4. **Experiment** → AB/n test (duration, sample, MDE), acceptance criteria, and guardrails.
5. **Release plan** → G1 discovery → G2 pilot → G3 scale; owners, dates, and *kill switch*.

---

## Scoring model (VFR) with weights

* **Value (0–5, 50%)**
  0 = unproven narrative; 3 = quantified but small; 5 = material KPI movement with CFO-signed math.
* **Feasibility (0–5, 30%)**
  0 = critical data missing; 3 = moderate integrations + change mgmt; 5 = data ready + low lift.
* **Risk (0–5, 20% *inverted*)**
  0 = high model/PII risk, no fallbacks; 5 = low risk with tested guardrails.

**Weighted score = 0.5·Value + 0.3·Feasibility + 0.2·Risk**

**Tie-breakers:** (a) **Time-to-impact** (sooner wins), (b) **Dependency load** (lighter wins), (c) **Customer reach** (broader wins).

---

## “Value math” (make the money line explicit)

**Formula:**
`Impact per unit × Eligible volume × Adoption × Confidence = $/period`

**Example (Ops Copilot, Contact Center):**

* Impact: **45 sec saved per case** = 45/3600 = **0.0125 hours**
* Fully loaded labor: **\$28/hour** → **\$0.35 per case** (28 × 0.0125 = 0.35)
* Eligible volume: **200,000 cases/quarter** → **\$70,000/quarter** (0.35 × 200,000)
* Adoption: **60%** → **\$42,000** (70,000 × 0.60)
* Confidence: **70%** → **\$29,400/quarter** (42,000 × 0.70)

> **Publish the assumptions** (and owners) so Finance can challenge or endorse them.

---

## Risk taxonomy (summarized)

* **Model risk:** hallucination, bias, drift, over-reliance.
* **Data risk:** PII/PHI exposure, residency, lineage gaps.
* **Operational risk:** uptime, latency, incident response, vendor lock-in.
* **Compliance & legal:** consent, copyright, records retention, audits.

Each Investment Brief must include **mitigations** (guardrails, evals, fallbacks) and **residual risk**.

---

## Activities (⏱ 75–90 minutes, with facilitation cues)

1. **KPI Mapping (20m)**

   * Map each use case to **1–2 board KPIs**; document baselines and data sources.
   * **Output:** `wk07/kpi_map.md` with KPI → metric → source → owner.

2. **Value Math (25m)**

   * Fill the hypothesis: *impact per unit × eligible volume × adoption × confidence*.
   * Validate assumptions with Finance & Ops; note sensitivity ranges.
   * **Output:** ROI table + assumptions register.

3. **Scoring & Prioritization (20m)**

   * Score with VFR; capture **rationales** and **evidence links** (logs, interviews).
   * Apply tie-breakers (time-to-impact, dependencies, reach).
   * **Output:** `wk07/usecase_scores.csv` (ranked).

4. **Investment Briefs (10–25m)**

   * Draft one-pagers with owner, milestones, guardrails, kill criteria.
   * **Output:** `wk07/investment_briefs/<usecase>.md`

---

## Stakeholder map (who must sign what)

* **Sponsor (VP/GM):** business outcome and baseline.
* **Product Owner:** scope, milestones, adoption plan.
* **Platform/Data Owners:** data contracts, integrations, SLOs.
* **Security/CISO:** risk class, guardrails, privacy posture.
* **Finance (CFO/FinOps):** ROI math, cost envelopes, unit economics.

> **RACI tip:** keep **Accountable** to one name per use case; advisors can be many.

---

## Adoption & telemetry (baked into Day01)

* **Adoption plan:** Who will use it first? What training and nudges exist? What blockers are expected?
* **Telemetry plan:** Events, dashboards, and alerts to measure value, guardrails, and regressions.

  * Value KPIs (e.g., AHT, CSAT, conversion)
  * System KPIs (latency p95, error rate)
  * Safety KPIs (groundedness, fallback rate, escalation count)

---

## Deliverables (expanded)

* `wk07/investment_briefs/*.md` — decision-ready one-pagers (see template below).
* `wk07/usecase_scores.csv` — ranked backlog (include weights, tie-breakers).
* `wk07/kpi_map.md` — KPI ↔ metric definition ↔ telemetry plan ↔ owners.
* `wk07/assumptions_register.md` — explicit assumptions + sensitivity notes.

---

## Acceptance & QA (evidence-based)

* Each brief lists **baseline, target, adoption plan, telemetry, and a named owner**.
* Scores reference **evidence** (data pull, logs, user research, vendor docs).
* **Kill criteria** are unambiguous (thresholds + owner + rollback path).

---

## Investment Brief — CXO Template (copy/paste)

```md
# <Use Case Name>
**Sponsor:** <VP/Director> • **Product Owner:** <Name> • **Quarter:** <Q+1/Q+2> • **Gate:** G1→G2

## Business Outcome (KPI)
- KPI(s): <Revenue ↑ / Margin ↑ / Risk ↓ / CX ↑>  
- Baseline (source): <value, system, date> → Target: <value by <date>>
- Counterfactual: <what happens if we do nothing, and why>

## Value Hypothesis (ROI Math)
- Impact/unit: <e.g., 45 sec saved → 0.0125 hours × $28 = $0.35>
- Eligible volume / period: <e.g., 200,000 cases/quarter>
- Adoption (initial → target): <e.g., 60% → 85%>
- Confidence: <e.g., 70%>  
**Est. value/period:** **$<value>** (show calculation & sensitivity)

## Feasibility & Readiness
- Data contracts: <Y/N + link> • Integrations: <systems/APIs> • SLOs: <p95 latency, uptime>
- Dependencies: <teams/vendors> • Change mgmt: <training, comms, champions>
- Timeline: G1 discovery <date> • G2 pilot <date> • First release <date>

## Risk & Guardrails
- Model risk class: <L/M/H> • PII/PHI exposure: <L/M/H> • Residency: <region>
- Guardrails/evals: <tests, thresholds> • Fallback/rollback: <path & owner>
- Residual risk & mitigation: <short paragraph>

## Investment Ask
- Team: <roles/FTE> • Budget: <$> • Infra/Units: <$/req; token; storage>
- Decision needed: <approve/hold/kill> by <date>

## Kill Criteria (explicit)
- Example: If **AHT reduction < 15%** after 4 weeks @ ≥1k samples → rollback; owner: <name>
```

---

## Example scoring table (illustrative)

| Use Case               | Value (0–5) | Feas. (0–5) | Risk (0–5) | Weighted Score | Time-to-Impact | Dependencies | Tie-Break |
| ---------------------- | ----------- | ----------- | ---------- | -------------- | -------------- | ------------ | --------- |
| Ops Copilot (AHT ↓)    | 4.0         | 4.0         | 4.5        | **4.2**        | 6–8 weeks      | Low          | Wins      |
| Equity Mining (Upsell) | 3.5         | 3.0         | 3.5        | **3.4**        | 10–12 weeks    | Med          |           |
| Vendor Risk Summarizer | 2.5         | 4.5         | 4.5        | **3.6**        | 4–6 weeks      | Low          | Wins      |

> **Interpretation:** “Ops Copilot” and “Vendor Risk Summarizer” advance to **G2 pilots**; Equity Mining remains in **G1 discovery** pending data quality fixes.

---

## Facilitation script (practical)

* “What **KPI** are we moving and by how much?” (No KPI → next idea.)
* “Show me the **math**—impact, volume, adoption, confidence—and who owns each assumption.”
* “Where will this **telemetry** live on day one?”
* “If it under-delivers, what’s the **kill threshold** and **rollback**?”

---

## Day-end outputs to circulate

* **Ranked backlog** with VFR scores and tie-breakers.
* **Three Investment Briefs** (min) ready for the next Gate review.
* **Assumptions register** with Finance/Security sign-offs in progress.

---

If you want, I can also generate a **CSV template** for `usecase_scores.csv` and a **markdown starter** for the first three Investment Briefs based on your current backlog—so your cohort can start scoring immediately.
