# Week04 — Day05: Decision Memo Template & Example (CXO Edition)

## Objectives

* Standardize a **one-page decision memo** that executives can scan in minutes.
* Produce a **worked example** that models great options framing, a clear recommendation, explicit risks, a **time-bound ask**, and measurable success criteria.

## Lesson Summary

Great decisions come from **tight framing**: problem → options → recommendation → risks → **decision request** → metrics. Keep it to one page plus links. Use the same structure every time so boards and ELTs can move fast.

## Activities (60–75 min)

1. **Adopt the template (10 min):** Confirm sections and RACI header.
2. **Draft an example (35–45 min):** Use a live topic (vendor, policy, investment).
3. **Dry-run readout (15 min):** 3-minute pitch; confirm the ask is **specific & time-bound**.

## Deliverables

* **Required**

  * `board/decision_memo_template.md`
  * `board/decision_memo_example.md`
* **Recommended**

  * `board/decision_memo_checklist.md` (10-point quality check)
  * `board/decision_memo_examples/` (store future memos)

## Acceptance & QA

* **Template** includes sections: **Problem**, **Options**, **Recommendation**, **Risks**, **Decision Request**, **Metrics**.
* **Example** shows at least **three options**, a **clear recommendation**, and a **time-bound ask** (dates, \$, thresholds).

---

## Drop-in: `board/decision_memo_template.md`

```markdown
# Decision Memo — <Title>
**Date:** YYYY-MM-DD  
**Owner (R):** <Name, Title>  
**Approver (A):** <Role or Body>  
**Consult (C):** <Roles>  
**Inform (I):** <Roles>  
**One-sentence context:** <Why now / what changed>

## Problem
State the problem/opportunity in 3–5 sentences. Include scope, urgency, and the business outcome at stake.

## Options
Describe 2–4 realistic options (incl. “do nothing” if valid). Use the table for comparability.

| Option | Summary | Time-to-Impact | 1-yr Cost | Value (qual/quant) | Risks | Notes |
|-------:|---------|----------------|-----------|---------------------|-------|-------|
| A      |         |                |           |                     |       |       |
| B      |         |                |           |                     |       |       |
| C      |         |                |           |                     |       |       |

## Recommendation
Name the option you recommend and **why** (3–5 bullets). Call out trade-offs explicitly.

## Risks
Top 3 risks if we follow the recommendation, with **mitigations** and **owners**.

- Risk #1 — Mitigation — Owner  
- Risk #2 — Mitigation — Owner  
- Risk #3 — Mitigation — Owner

## Decision Request
What approval is needed **now**? Be specific and time-bound.

- **Approve:** <policy/vendor/investment/etc.>  
- **Budget/Limit:** $<amount> NTE; term <months>  
- **Dates/Milestones:** <contract by… / pilot by… / GA by…>  
- **Guardrails:** <security/legal gates; exit criteria>  

## Metrics (Success Criteria)
How we will know this worked. Include baseline and target.

- KPI #1 (baseline → target by date)  
- KPI #2 (baseline → target by date)  
- KPI #3 (leading indicator / stop-loss)

**Links:** <Decision log ID> · <PRD/Policy> · <Security/Legal review> · <Budget model>
```

---

## Drop-in: `board/decision_memo_example.md`

> Example topic chosen to match earlier governance artifacts: **data ingestion platform selection**.

```markdown
# Decision Memo — Select Data Ingestion Platform (Fivetran vs Airbyte vs Build)
**Date:** 2025-09-04  
**Owner (R):** COO  
**Approver (A):** Board (spend > $100k)  
**Consult (C):** CTO, CISO, Controller, CPO  
**Inform (I):** FP&A, Data Eng, Security, Product  
**One-sentence context:** We need reliable pipelines for finance, product, and customer KPIs to standardize the Board pack and reduce manual wrangling.

## Problem
Today’s pipelines are ad-hoc and brittle. Analysts spend ~12–15 hrs/week on manual loads and fixes. KPI timeliness blocks Board/ELT visibility and model evaluation for AI features. We need a managed, auditable ingestion layer with 30-minute freshness for core tables.

## Options
| Option | Summary                                 | Time-to-Impact | 1-yr Cost (NTE) | Value (qual/quant)                                 | Risks                         | Notes |
|------:|------------------------------------------|----------------|-----------------|----------------------------------------------------|-------------------------------|------|
| A     | **Fivetran** (managed SaaS connectors)   | 2–4 weeks      | $90–120k        | 12–15 hrs/wk saved; 99% sync reliability; SLAs     | Vendor lock-in; usage costs   | SOC 2, DPA available |
| B     | **Airbyte Cloud** (managed OSS)          | 3–6 weeks      | $30–60k         | Flexibility; lower license; good coverage          | More tuning; reliability risk | Needs in-house SRE time |
| C     | **Build in-house** (custom ETL)          | 8–12 weeks     | $180–240k       | Full control; no license                           | Delivery risk; key-person     | Slower to first value |

## Recommendation
Adopt **Option A — Fivetran** for Year 1 to achieve speed and reliability, while retaining Option B as a future hedge for niche sources.
- Fastest path to the **Q4 Board pack** data SLAs.  
- Proven reliability and compliance posture (SOC 2; DPA).  
- Frees analysts for higher-value work; lowers incident load.  
- Usage-based cost is acceptable given volume projections.

## Risks
- **Cost overrun due to volume spikes** — *Mitigation:* set monthly budget alerts; tiered sync frequency; archive cold tables — **Owner:** FP&A.  
- **Connector gaps** for niche sources — *Mitigation:* use Airbyte for edge cases; request vendor roadmap — **Owner:** Data Eng.  
- **Security/data residency** concerns — *Mitigation:* DPA/SCCs; PII minimization; encryption & access reviews — **Owner:** CISO.

## Decision Request
- **Approve:** Vendor selection **Fivetran** for 12 months.  
- **Budget (NTE):** **$120,000** including implementation and usage.  
- **Dates/Milestones:** Contract by **2025-09-30**; pilot 3 pipelines by **2025-10-15**; GA for finance/product/customer tables by **2025-11-15**.  
- **Guardrails:** Execute DPA; pass security review; monthly cost & reliability report to ELT; exit to Airbyte if reliability < 98% for two consecutive months.

## Metrics (Success Criteria)
- **Time-to-First-Pipeline (TTFP):** ≤ **14 days** (baseline N/A).  
- **Pipeline Reliability:** **≥ 99.0%** success rate monthly (baseline ~94%).  
- **Data Freshness (core tables):** **≤ 30 min** lag (baseline 12–24 hrs).  
- **Analyst Time Saved:** **≥ 10 hrs/week** within 30 days of GA (baseline 0).  
- **Cost / 1M rows:** Track monthly; within plan ±10%.

**Links:** DEC-2025-003 (Decision Log) · RFP#12 · Security review · Budget model v3
```

---

## (Optional) Drop-in: `board/decision_memo_checklist.md`

```markdown
# Decision Memo Quality Checklist (One-Pager)
- ☐ Title & one-sentence context
- ☐ R/A/C/I filled
- ☐ Clear Problem (why now; outcome at stake)
- ☐ 3 options with comparable table (incl. “do nothing” if relevant)
- ☐ Crisp Recommendation with trade-offs
- ☐ Top 3 Risks + mitigations + owners
- ☐ **Decision Request** is specific and time-bound (dates/$/limits/guardrails)
- ☐ **Metrics** include baseline → target and a stop-loss
- ☐ Links to supporting evidence (PRD/policy/budget/security)
- ☐ One page max (appendix links allowed)
```

---

## Timebox

* **⏱ 60–75 min:** 10 adopt template • 40 draft example • 15 dry-run & edits.

Want me to bundle these files in a zip so you can drag them straight into your repo?
