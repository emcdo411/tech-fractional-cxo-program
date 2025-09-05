# Week06 — Day06: Commercial Strategy — Pricing, SLAs and Vendor Management (CXO Edition)

> **CXO Lens (Deloitte-grade):** Great tech fails without **commercial clarity**. Today we model **unit economics**, set **enforceable SLAs with credits**, lock **DPA and indemnity** positions, and run a **competitive sourcing** motion that stands up in front of Finance, Legal, and the Board.

---

## Objectives
- Build **pricing scenarios** by product line (token, seat, outcome) with **sensitivity** and a total-cost envelope.
- Define **SLA targets and credits**, **DPA** positions, **AI indemnity** stance, audit rights, and residency terms.
- Publish an **RFP template** and **vendor scorecard** to drive transparent, defensible vendor selection.

---

## Lesson Summary
We convert capabilities into **P and L disciplined offers**. Pricing is tied to **value and cost to serve**; SLAs are **measurable** with **automatic credits**; contracts reflect **privacy, security, and model risk** realities. Sourcing becomes a **repeatable playbook** with clear decision criteria and traceable artifacts.

---

## Activities (⏱ 90 minutes)
1) **Pricing and Unit Economics (35m)**  
   - Define product SKUs and metering: **token per request**, **seat per user**, **outcome per task**.  
   - Build a **sensitivity sheet**: requests per user, tokens per request, cache hit rate, model rate, support load.  
   - Produce a **gross margin view** by SKU and a **breakeven** per customer cohort.

2) **Legal and Risk Positions (30m)**  
   - Draft **DPA addendum**: processing roles, residency, sub-processors, data retention, DPIA triggers.  
   - Set **AI indemnity** and **IP** positions; carve-outs for third-party models; limitation of liability bands.  
   - Finalize **SLA matrix** with **credits** and a **claims workflow**; align on audit and pen-test rights.

3) **Sourcing and Vendor Governance (25m)**  
   - Publish **RFP template** and **scorecard** with weights for capability fit, security, roadmap, support, TCO.  
   - Define **BAFO process**, **commercial negotiation guardrails**, and **ongoing QBR cadence**.

---

## Deliverables
- `finance/pricing_scenarios.xlsx` — SKUs, usage assumptions, sensitivity, margin by SKU and cohort  
- `vendor/sla_matrix.csv` — SLO, target, measure, credit schedule, claim window  
- `legal/ai_dpa_addendum.md` — roles, residency, retention, DPIA, sub-processors, audit rights  
- `legal/indemnity_positions.md` — IP, AI-specific risks, liability caps, carve-outs  
- `procurement/rfp_template.md` — scope, submission, evaluation, timeline, T and Cs  
- `vendor/vendor_scorecard.csv` — criteria, weights, scoring rubric, tie-break rules  
- `vendor/governance_playbook.md` — QBR agenda, KPIs, issue escalation, exit plan

---

## Acceptance and QA (evidence-based)
- **Pricing model** includes **3 scenarios** (token, seat, outcome) + sensitivity; **margin ≥ target** on Base and **not below floor** on Bear.  
- **SLA matrix** ties **credits to measurable SLOs** with a documented **claims workflow** and ownership.  
- **Legal positions** (DPA, indemnity, liability, audit) **reviewed by Legal** and marked ready to send.  
- **Scorecard** weights are published; **RFP** timeline and decision process are documented and shareable with the Board.

---

## Commercial Workflow (Mermaid)

```mermaid
flowchart LR
  plan["Define pricing scenarios"] --> model["Build unit economics model"]
  model --> terms["Draft SLA and DPA and indemnity terms"]
  terms --> rfp["Issue RFP"]
  rfp --> eval["Evaluate responses"]
  eval --> bafo["Run BAFO and negotiate"]
  bafo --> award["Award and sign"]
  award --> govern["Vendor governance and QBRs"]
````

---

## Pricing Scenarios — Structure

**SKU types**

* **Token**: \$ per 1k tokens (prompt + completion); add **retrieval surcharge** per GB indexed.
* **Seat**: \$ per named user per month; include **fair-use cap** and **overage band**.
* **Outcome**: \$ per completed task with **quality bar** and **rework credit**.

**Key formulas (sheet ready)**

* **Unit cost per request** = $(tokens per req ÷ 1000 × rate) × (1 − cache hit)$ + retrieval compute + storage amortization
* **Gross margin** = price per unit − unit cost − support variable cost
* **Breakeven volume** = fixed cost ÷ contribution margin per unit

**Sensitivity toggles**

* Tokens per request ±20%
* Cache hit rate 0–50%
* Model rate ±15%
* Support minutes per ticket ±25%

---

## SLA Matrix (CSV sketch)

```csv
SLO,Target,Measure,Credit,Notes
Availability,99.9%,synthetic checks,5% MRC if <99.5%,monthly
Latency p95,<=1200ms,APM,2% MRC if >1400ms 3d+,core paths
Quality groundedness,>=4.2/5,eval harness,2% MRC if <4.0 for 7d,requires citations
Security incident Sev-1,0,IR logs,10% MRC per incident,notify<=1h
Support response P1,<=15m,ticketing,2% MRC per breach,capped 10% MRC
```

> **Claims workflow:** customer notifies within **10 business days**; provider confirms breach via telemetry; **credit auto-applies** to next invoice. **Exclusions** listed in T and Cs.

---

## DPA Addendum — Outline

* **Roles:** Controller vs Processor responsibilities; sub-processor notification window.
* **Residency:** data pinned by tenant; cross-border transfer mechanisms listed.
* **Retention:** default 90 days logs, 30 days backups; purge APIs; deletion proof artifact.
* **Security:** encryption, access controls, key rotation; pen-test cadence and summary sharing.
* **DPIA triggers:** new model family, new PII category, new region, exposure ≥ threshold.
* **Audit:** right to audit or independent attestations (SOC 2, ISO); remediation timelines.

---

## AI Indemnity and IP — Positions

* **AI-specific indemnity:** defend and settle third-party IP claims **arising from provider models**; carve-out for **customer prompts and data**.
* **Cap structure:** **2× annual fees** for IP claims; **1×** for other liabilities; unlimited for **intentional misconduct** and **PII breach** in some jurisdictions.
* **Third-party models:** pass-through terms; prompt injection and jailbreak handled by **guardrail warranty** to a reasonable standard.

---

## Vendor Scorecard (CSV sketch)

```csv
Criterion,Weight,Definition,5 Score Anchor,1 Score Anchor
Capability fit,0.25,Match to required use cases,Exceeds all with roadmap,Missing critical items
Security and privacy,0.20,Controls and attestations,ISO+SOC2+DLP+residency,No attestations
Reliability and SLA,0.15,SLOs and credits history,Proven 12m with credits,No history
Total cost of ownership,0.15,Price + run cost + services,Transparent and low risk,Opaque and high uplift
Roadmap alignment,0.10,Feature trajectory,Quarterly roadmap with access,No roadmap
Support and success,0.10,Coverage and SLAs,24x7 P1 15m and TAM,Email only
References,0.05,Similar deployments,3+ strong refs,None provided
```

---

## RFP Template — Highlights

* **Context and scope** (problem, volumes, regions, data classes).
* **Functional checklist** (retrieval, structured output, admin, audit).
* **Non-functional** (SLOs, security, privacy, residency, finops).
* **Commercial** (pricing workbook, discount tiers, professional services rates).
* **Legal** (DPA redlines, indemnity, liability, audit).
* **Timeline** (questions, demo, POC window, BAFO date, award date).
* **Submission** (format, contacts, NDA references).

---

## Governance and QBRs

**QBR agenda**

* Performance vs SLOs and credits issued
* Adoption and value metrics
* Roadmap delivery and change requests
* Risk register and compliance updates
* Cost variance and forecast
* Actions, owners, dates

**Exit plan**

* Data export format and escrow
* Model and prompt artifacts handback
* Run-off support window and rates

---

## Negotiation Guardrails

* **Never** waive audit or residency where required; use **compensating controls** if negotiable.
* Tie **price protections** to **usage bands** and **model rate changes**.
* Lock **most favored nation** only with clear scope and auditability.
* Use **trial to paid** with **price carry-forward** and defined **acceptance tests**.

---

## RACI

* **Responsible:** Finance (pricing model), Legal (DPA and indemnity), Procurement (RFP and scorecard)
* **Accountable:** CFO for pricing and margins, GC for legal positions
* **Consulted:** CISO, CTO, Product, Sales
* **Informed:** ELT, Board committee as applicable

---

## What “Great” Looks Like (Harvard/MIT CXO rubric)

* **Profitable by design:** every SKU has transparent **unit economics** and a working **breakeven**.
* **Measurable SLAs:** credits map to **verifiable telemetry**; claims are **operationalized**.
* **Defensible contracts:** DPA, indemnity, and liability caps are **clear and balanced**.
* **Transparent sourcing:** decisions trace to a **weighted scorecard** and **BAFO** record.

---

## Timebox and Follow-ups

* **⏱ 90 min:** 35 pricing • 30 legal • 25 sourcing.
* **T+48h:** circulate pricing workbook and legal positions for sign-off.
* **T+7d:** issue RFP with scorecard; schedule BAFO and draft award memo.

```
::contentReference[oaicite:0]{index=0}
```
