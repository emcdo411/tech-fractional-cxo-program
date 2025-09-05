# Week04 — Day02: Decision Log & Governance Calendar (CXO Edition)

## Objectives

* Stand up a **single source of truth** for strategic and material operational decisions.
* Publish a **governance calendar** that locks cadence, inputs, and ownership for each forum.
* Reduce decision cycle time and eliminate “lost context” by capturing **RACI, evidence, and follow-ups**.

## Lesson Summary

Decisions are assets. A lightweight, versioned **Decision Log** + a clear **Governance Calendar** prevents re-litigation, accelerates onboarding, and provides audit evidence (board, security, compliance). Keep it simple: consistent fields, unique IDs, explicit owners, clear inputs, and a predictable rhythm.

## Activities (90 minutes total)

1. **Design the schema (15 min):** Confirm fields below; adopt ID format `DEC-YYYY-NNN`.
2. **Backfill top 5 decisions (30 min):** Budget, hiring plan, high-risk AI release, vendor selection, security policy.
3. **Publish the calendar (30 min):** List all governance forums, cadence, standard inputs, decision scope, and owners.
4. **Wire the habit (15 min):** Add a 5-minute “Decision Log update” to each forum agenda; assign a scribe.

## Deliverables (drop-in)

* **Required**

  * `governance/decision_log.md`
  * `operations/governance_calendar.md`
* **Recommended**

  * `governance/decision_log.csv` (same rows, CSV for spreadsheets)
  * `operations/governance_calendar.yml` (machine-readable)
  * `governance/meeting_templates/agenda_template.md` (one-pager agenda)
  * `governance/meeting_templates/decision_memo_template.md` (1-page “ask”)

## Acceptance & QA (evidence-based)

* **Decision Log** contains **≥ 5 rows**, each with **ID, Date, Topic, Decision, R/A/C/I, Inputs, Owner, Actions, Review date, Status, Source link**.
* **Governance Calendar** lists each forum with **meeting type, cadence, inputs, decision scope, owner, SLA for materials**.
* A named scribe is recorded for each forum; today’s decisions are added within **24 hours**.

---

## Drop-in: `governance/decision_log.md`

```markdown
# Decision Log
**Purpose:** Single source of truth for material decisions (strategy, finance, risk, AI, people, vendor, product).  
**ID format:** `DEC-YYYY-NNN` (e.g., DEC-2025-001).  
**Status:** Proposed | Approved | Rejected | Superseded.  
**RACI:** R=Recommend, A=Approve, C=Consult, I=Inform.

| ID           | Date       | Topic                                 | Decision (1–2 lines)                                                 | Type     | Threshold / Trigger                     | R / A / C / I                 | Inputs (links)                                        | Vote / Method        | Effective | Owner       | Actions (next)                            | Review On | Status     | Source (PR/Doc)                 |
|--------------|------------|---------------------------------------|-----------------------------------------------------------------------|----------|------------------------------------------|-------------------------------|--------------------------------------------------------|----------------------|-----------|-------------|-------------------------------------------|-----------|------------|----------------------------------|
| DEC-2025-001 | 2025-09-04 | FY26 Budget Guardrails                | Approve 12% Opex increase with quarterly reforecast checkpoints       | Finance  | Annual budget                            | CFO / Board / Audit / All     | FP&A pack v3; KPI dashboard; variance analysis        | Board vote (7–0–0)   | 2025-10-01| CFO         | Publish budget v2; set Q1 forecast review | 2026-01-15| Approved   | PR#142 / drive:budget_fy26      |
| DEC-2025-002 | 2025-09-04 | AI High-Risk Release: “Copilot X”     | Gate to private beta; require model risk mitigations (#MR-17, -22)    | Risk/AI  | Risk score ≥7/10                         | CPO / Risk&AI Cttee / Audit / CEO | Model eval report; red-team notes; DPIA               | Committee consensus  | 2025-09-18| CPO         | Close MR-17/22; run 2-week beta; report   | 2025-10-02| Approved   | PRD#88 / wiki:copilotx          |
| DEC-2025-003 | 2025-09-04 | Vendor Selection: Data Pipeline       | Select Fivetran; negotiate 15% discount; 12-mo term                   | Vendor   | TCV > $100k                              | Eng Dir / COO / Legal / CIO   | RFP matrix; security review; TCO model               | Consent agenda        | 2025-09-30| COO         | Finalize MSA/DPA; kickoff 10/3            | 2025-12-01| Approved   | RFP#12 / dealdesk:ftn           |
| DEC-2025-004 | 2025-09-04 | Security Policy: Admin MFA            | Mandate FIDO2 for admins; disable OTP for admin roles                 | Security | Admin access change                      | CISO / Board / IT / All       | CA policies draft; sign-in risk data; helpdesk stats  | Board vote (6–1–0)   | 2025-09-20| CISO        | Rollout plan; comms; helpdesk playbook    | 2025-11-01| Approved   | policy:mfa_admin_v2             |
| DEC-2025-005 | 2025-09-04 | Hiring Plan: Data Team                | Approve 3 hires (DS, DE, DA) with staged start dates                  | People   | Net new headcount                        | VP Data / CEO / HR / Finance  | Capacity model; backlog; req write-ups               | ELT decision         | 2025-10-15| VP Data     | Open reqs; start sourcing; Q4 onboarding  | 2026-01-10| Approved   | HRIS:requisitions               |

> **How we use this:**  
> - Scribe updates this log during/after each forum.  
> - Every new decision links to the **decision memo** and **supporting artifacts**.  
> - If a decision is changed, add a **new row** (don’t edit history) and mark the old one **Superseded**.
```

### (Optional) CSV mirror — `governance/decision_log.csv`

```csv
ID,Date,Topic,Decision,Type,Threshold/Trigger,R,A,C,I,Inputs,Vote/Method,Effective,Owner,Actions,Review On,Status,Source
DEC-2025-001,2025-09-04,FY26 Budget Guardrails,"Approve 12% Opex increase with quarterly reforecast checkpoints",Finance,Annual budget,CFO,Board,Audit,All,"FP&A pack v3; KPI dashboard; variance analysis","Board vote (7–0–0)",2025-10-01,CFO,"Publish budget v2; set Q1 forecast review",2026-01-15,Approved,"PR#142; drive:budget_fy26"
DEC-2025-002,2025-09-04,AI High-Risk Release: “Copilot X”,"Gate to private beta; require model risk mitigations (#MR-17, -22)",Risk/AI,"Risk score ≥7/10",CPO,"Risk&AI Cttee",Audit,CEO,"Model eval report; red-team notes; DPIA",Committee consensus,2025-09-18,CPO,"Close MR-17/22; run 2-week beta; report",2025-10-02,Approved,"PRD#88; wiki:copilotx"
DEC-2025-003,2025-09-04,Vendor Selection: Data Pipeline,"Select Fivetran; negotiate 15% discount; 12-mo term",Vendor,"TCV > $100k","Eng Dir",COO,Legal,CIO,"RFP matrix; security review; TCO model",Consent agenda,2025-09-30,COO,"Finalize MSA/DPA; kickoff 10/3",2025-12-01,Approved,"RFP#12; dealdesk:ftn"
DEC-2025-004,2025-09-04,Security Policy: Admin MFA,"Mandate FIDO2 for admins; disable OTP for admin roles",Security,"Admin access change",CISO,Board,IT,All,"CA policies draft; sign-in risk data; helpdesk stats","Board vote (6–1–0)",2025-09-20,CISO,"Rollout plan; comms; helpdesk playbook",2025-11-01,Approved,policy:mfa_admin_v2
DEC-2025-005,2025-09-04,Hiring Plan: Data Team,"Approve 3 hires (DS, DE, DA) with staged start dates",People,"Net new headcount","VP Data",CEO,HR,Finance,"Capacity model; backlog; req write-ups",ELT decision,2025-10-15,"VP Data","Open reqs; start sourcing; Q4 onboarding",2026-01-10,Approved,HRIS:requisitions
```

---

## Drop-in: `operations/governance_calendar.md`

```markdown
# Governance Calendar
**Purpose:** Make decision forums predictable. Each forum has a cadence, scope, inputs (pre-reads), owner, and materials SLA.

> **Materials SLA:** Pre-reads due **T-3 business days** before; addenda by **T-1**. Scribe captures minutes and Decision Log updates within **24 hours**.

| Forum / Meeting            | Cadence      | Scope (Decisions)                                                                 | Standard Inputs (Pre-Reads)                                       | Owner (Chair) | Scribe | Materials SLA |
|----------------------------|--------------|-----------------------------------------------------------------------------------|--------------------------------------------------------------------|---------------|--------|---------------|
| **Board of Directors**     | Quarterly    | Strategy, budget, risk, high-risk AI, major vendor/financing, comp & equity       | CEO letter; KPI dashboard; finance pack; risk heatmap; decision memos | Chair         | Sec'y  | T-5 / T-2     |
| **ELT (Exec Leadership)**  | Weekly       | Cross-functional priorities; resourcing; escalations                              | KPI slice; hiring plan; program status; risk exceptions            | CEO           | Chief of Staff | T-1      |
| **Risk & AI Committee**    | Monthly      | ERM; model risk; high-risk AI releases; red-team results                          | Model evals; DPIA; exception list; mitigation plans                | CPO           | PMO    | T-2           |
| **Audit Committee**        | Quarterly    | Financials; controls; cyber posture; compliance                                   | Financial statements; internal audit updates; cyber metrics        | Audit Chair   | Controller | T-3        |
| **Architecture Review**    | Weekly       | Key design changes; platform standards; data contracts                             | Design docs; ADRs; data contracts; capacity/risk notes             | CTO           | Eng Ops | T-1           |
| **Change Advisory Board**  | Weekly       | Production changes; deployment freezes; rollback readiness                         | Change tickets; test evidence; rollback plans                      | SRE Lead      | SRE    | T-1           |
| **Security Steering**      | Bi-weekly    | Controls status; incidents; MFA/EDR coverage; third-party risk                     | Control KPIs; incident PIRs; vendor risk updates                   | CISO          | SecOps | T-2           |
| **People & Talent**        | Monthly      | Hiring plan; succession; engagement; equity refresh                                | HC plan; recruiting funnel; engagement survey; comp benchmarks     | CHRO          | HRBP   | T-2           |

## Annual Board Calendar (themes)
- **Q1:** Strategy refresh; AI & Model Risk deep dive; KPI baselines  
- **Q2:** Product & customer health; Board-level cyber tabletop; Talent review  
- **Q3:** 3-year plan & capital allocation; pricing & margins; AI roadmap checkpoint  
- **Q4:** Budget approval; risk heatmap & insurance; comp & equity plan

## Roles & Responsibilities
- **Owner/Chair:** Sets agenda, ensures pre-reads, drives decisions.  
- **Scribe:** Captures minutes and updates the Decision Log within **24 hours**.  
- **Presenters:** Provide concise decision memos (1 page) with clear “Ask”.

```

### (Optional) YAML mirror — `operations/governance_calendar.yml`

```yaml
materials_sla:
  prereads_days_before: 3
  addenda_days_before: 1
forums:
  - name: Board of Directors
    cadence: Quarterly
    owner: Chair
    scribe: Secretary
    scope: ["Strategy","Budget","Risk","High-Risk AI","Major vendor/financing","Comp/Equity"]
    inputs: ["CEO letter","KPI dashboard","Finance pack","Risk heatmap","Decision memos"]
    sla: { prereads: T-5, addenda: T-2 }
  - name: ELT
    cadence: Weekly
    owner: CEO
    scribe: Chief of Staff
    scope: ["Priorities","Resourcing","Escalations"]
    inputs: ["KPI slice","Hiring plan","Program status","Risk exceptions"]
    sla: { prereads: T-1 }
  - name: Risk & AI Committee
    cadence: Monthly
    owner: CPO
    scribe: PMO
    scope: ["ERM","Model risk","High-risk AI releases","Red-team results"]
    inputs: ["Model evals","DPIA","Exception list","Mitigation plans"]
    sla: { prereads: T-2 }
```

---

## Meeting Templates (recommended)

### `governance/meeting_templates/agenda_template.md`

```markdown
# <Forum Name> — Agenda (YYYY-MM-DD)
- **Owner/Chair:** <Name> | **Scribe:** <Name> | **Location:** <Link>
- **Objectives:** <Decisions to make>

## 1) Consent Agenda (5 min)
- Minutes approval; standing reports

## 2) KPI & Risk Review (10 min)
- Highlights, deltas, exceptions

## 3) Decision Items (time-boxed)
- <Item A>: Decision memo link | R/A/C/I
- <Item B>: Decision memo link | R/A/C/I

## 4) Actions & Next Steps (5 min)
- Owners, due dates

> Scribe: Update Decision Log within 24h (ID, result, links).
```

### `governance/meeting_templates/decision_memo_template.md`

```markdown
# Decision Memo — <Topic>
**Ask:** <What approval is sought?>  
**Context:** <1–2 paragraphs>  
**Options:** <A/B/C with tradeoffs>  
**Risks & Mitigations:** <Top 3>  
**Recommendation:** <Preferred option + why>  
**Impacts:** <People, budget, tech, customers>  
**Attachments:** <Links to data, PRDs, evals>
```

---

## Metrics (add to KPI pack)

* **Decision cycle time** (intake → decision)
* **Pre-read compliance** (% delivered on/before SLA)
* **% decisions with RACI complete**
* **Action item closure rate** (% by due date)
* **# high-risk AI items reviewed** (per month)

---

## Timebox

* **⏱ 90 minutes:** 15 schema • 30 backfill • 30 calendar • 15 habit/roles.

---

If you’d like, I can output these files as a ready-to-import zip (like we did for Week05), or generate CSV/YAML variants for easy spreadsheet upload.
