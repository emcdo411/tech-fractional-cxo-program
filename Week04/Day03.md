# Week04 — Day03: Board Pack Outline (CXO Edition)

## Objectives

* Define a **six-section board pack** with consistent content and *single* source of truth per metric.
* Assign **owners, inputs, and refresh cadence** to each section.
* Lock **materials SLA** (pre-reads), **KPI catalog**, and a light **style guide**.

## Lesson Summary

Treat the board pack like a product: tight structure, repeatable inputs, and reliable refresh cycles. The pack should answer three questions fast: **How are we doing? What changed? What decisions are needed?**

## Activities (90 minutes)

1. **Pick the six** sections and owners (10 min).
2. **Map inputs** → sources → refresh cadence (30 min).
3. Build a **KPI catalog** (definitions, targets, alert thresholds) (30 min).
4. Set **materials SLA** + pack style rules; draft the outline file (20 min).

## Deliverables

* **Required**

  * `board/board_pack_outline.md`
* **Recommended**

  * `board/board_pack_sources.csv`
  * `board/kpi_catalog.csv`
  * `board/board_pack_style_guide.md`
  * `board/board_pack_calendar.yml`
  * `board/consent_agenda_template.md`
  * `board/decision_memo_template.md` (reused from Day02 is fine)

## Acceptance & QA

* `board_pack_outline.md` lists **six sections** with **owner, inputs, and source systems** for each.
* KPI catalog defines **owner, formula, slice, target, alert threshold** for every KPI shown.
* **Materials SLA** documented (e.g., **T-5** pre-reads; **T-2** addenda); pack has **version/date**.

---

## Drop-in: `board/board_pack_outline.md`

```markdown
# Board Pack Outline (Six Sections)
**Version:** 1.0  |  **Effective:** YYYY-MM-DD  |  **Materials SLA:** Pre-reads T-5; Addenda T-2

## Sections (Overview)
1) CEO Letter & Headlines  
2) KPI Dashboard & Trends  
3) Customers & Product Health  
4) Financials & Capital  
5) Risk, Security & Compliance (incl. AI/Model Risk)  
6) Decisions & Resolutions

---

## 1) CEO Letter & Headlines
**Purpose:** Set context; what’s up/down/next.  
**Key Questions:** What changed? Where are we confident/concerned? What decisions do we need?  
**Standard Inputs:** CEO narrative (1 page), Top 5 wins/risks, “Since last meeting” deltas.  
**Owner (R/A/C/I):** CEO (R), Chair (A), ELT (C), All (I)  
**Source Systems:** N/A (curated narrative)  
**Cadence:** Every meeting

## 2) KPI Dashboard & Trends
**Purpose:** Show business health in one view.  
**Key Questions:** Are we meeting plan? Where are trends breaking?  
**Standard Inputs:** KPI pack (Finance, Growth, Product, Customer, People, Risk) with MoM/YoY and variance to plan.  
**Owner (R/A/C/I):** FP&A (R), CEO (A), ELT (C), All (I)  
**Source Systems:** ERP/GL, CRM, Product Analytics, Data Warehouse, HRIS, GRC  
**Cadence:** Monthly/Quarterly per KPI

## 3) Customers & Product Health
**Purpose:** Customer reality check and product trajectory.  
**Key Questions:** What are customers doing/asking/churning? What product bets are paying off?  
**Standard Inputs:** NRR/GRR, NPS/CSAT, top churn reasons, roadmap snapshot, incidents, adoption curves.  
**Owner:** CPO (R), CEO (A), Sales/CS/CTO (C), All (I)  
**Sources:** CRM/CS, Support, Product Analytics, Incident system  
**Cadence:** Quarterly; high-volatility metrics monthly

## 4) Financials & Capital
**Purpose:** Performance vs. plan; runway; allocation.  
**Key Questions:** Where are we over/under? Are investments tracking returns?  
**Standard Inputs:** P&L, Balance Sheet, Cash Flow, SaaS metrics (ARR, NDR, CAC, LTV), pricing/margin trends.  
**Owner:** CFO (R), Board (A), FP&A/Controller (C)  
**Sources:** ERP/GL, Billing, Data Warehouse  
**Cadence:** Quarterly (monthly close summarized)

## 5) Risk, Security & Compliance (incl. AI/Model Risk)
**Purpose:** Make risk explicit and managed.  
**Key Questions:** What could derail plan? What are the mitigations?  
**Standard Inputs:** Risk heatmap (top 10), control coverage (MFA/EDR/backup), incidents/PIRs, AI model risk exceptions and mitigations.  
**Owner:** CISO + Risk & AI Cttee (R), Board (A), Legal/Eng (C)  
**Sources:** GRC, SIEM, MDM/EDR, Model evals, DPIAs  
**Cadence:** Quarterly; exceptions monthly

## 6) Decisions & Resolutions
**Purpose:** Time-boxed approvals and consent items.  
**Key Questions:** What needs Board approval today? What’s on consent agenda?  
**Standard Inputs:** One-page decision memos, consent agenda, resolution texts.  
**Owner:** Chair/CEO (R), Board (A), GC/CoS (C)  
**Sources:** Decision memos, Resolution drafts  
**Cadence:** Every meeting

---

## Data & Ownership Map (excerpt)
| Section | Metric / Input              | Source System(s)                  | Definition / Formula (link) | Data Owner | Refresh | QA Checks                           |
|--------:|-----------------------------|-----------------------------------|-----------------------------|------------|---------|-------------------------------------|
| 2       | ARR                         | Billing → DWH                     | kpi_catalog.csv/ARR         | FP&A       | Monthly | Reconcile to GL; variance < 1%      |
| 2       | NDR                         | Billing, CRM → DWH                | kpi_catalog.csv/NDR         | FP&A       | Monthly | Cohort rollforward                  |
| 3       | NPS (rolling 90d)           | Survey tool                       | kpi_catalog.csv/NPS         | CX         | Weekly  | Response size ≥ threshold           |
| 4       | Gross Margin %              | ERP/GL                            | kpi_catalog.csv/GrossMargin | Finance    | Monthly | COGS classification audit           |
| 5       | AI High-Risk Exceptions #   | Model risk register               | kpi_catalog.csv/AIExceptions| Risk Cttee | Monthly | Exception closure SLA               |

> **Versioning:** Board pack is tagged by *meeting date* and commit hash.  
> **Accessibility:** Use color-blind safe palette; alt text on charts.
```

---

## Drop-in: `board/board_pack_sources.csv`

```csv
Section,Input/Metric,Source Systems,Owner,Refresh Cadence,Data Definition Link,QA Checks
1,CEO Letter,Narrative,CEO,Quarterly,NA,Reviewed by Chair
2,ARR,Billing;DWH,FP&A,Monthly,kpi_catalog.csv#ARR,GL reconciliation <1% variance
2,NDR,Billing;CRM;DWH,FP&A,Monthly,kpi_catalog.csv#NDR,Cohort rollforward OK
2,OpEx vs Plan,ERP/GL;FP&A model,FP&A,Monthly,kpi_catalog.csv#OpEx,Variance explained in notes
3,NRR/GRR,Billing;CRM,FP&A;CS,Monthly,kpi_catalog.csv#NRR,Churn cohort check
3,NPS,Survey tool,CX,Weekly,kpi_catalog.csv#NPS,Min responses per period
4,P&L (summary),ERP/GL,CFO,Monthly Close,kpi_catalog.csv#PnL,Close complete flag
4,Cash Runway,ERP/GL;Treasury,CFO,Monthly,kpi_catalog.csv#Runway,Scenario ties to cashflow
5,Risk Heatmap,GRC,Risk Committee,Quarterly,kpi_catalog.csv#RiskHeatmap,Top-10 updated; owners set
5,AI Risk Exceptions,Model Risk Register,Risk & AI Cttee,Monthly,kpi_catalog.csv#AIExceptions,Mitigation SLA
6,Decision Memos,Docs Repo,Chief of Staff,Per Meeting,decision_memo_template.md,Links & RACI present
```

---

## Drop-in: `board/kpi_catalog.csv`

```csv
KPI,Domain,Definition,Formula,Slice,Owner,Source,System of Record,Target,Alert Threshold,Notes
ARR,Finance,Annual Recurring Revenue,"Sum(ACV active)",By product/segment,FP&A,Billing,DWH,$XM,Plan -5%,Net new + expansions - churn
NDR,Finance,Net Dollar Retention,"(Start ARR + Expansion - Contraction - Churn) / Start ARR",By cohort,FP&A,Billing+CRM,DWH,>110%,<100%,Report by cohort
GrossMarginPct,Finance,Gross Margin %,"(Revenue - COGS) / Revenue",Total/Prod,Finance,ERP/GL,ERP,>70%,<65%,COGS classification
NRR,Customer,Net Revenue Retention,"(Start Rev + Expansion - Contraction - Churn) / Start Rev",By seg,CS,Billing+CRM,DWH,>105%,<95%,—
NPS,Customer,Net Promoter Score,"%Promoters - %Detractors",Rolling 90d,CX,Survey tool,Survey,>50,<30,Min responses per period
P1Incidents,Risk,P1 incident count,"Count(P1 last 90d)",By product,SRE,Incident tool,IR tool,<2,>=2,Include PIR status
AIRiskExceptions,Risk,# open model risk exceptions,"Count(open exceptions)",By severity,Risk Cttee,Model register,GRC,<3,>=5,Score ≥7/10 = High
```

---

## Drop-in: `board/board_pack_style_guide.md`

```markdown
# Board Pack Style Guide
- **Length:** 30 core slides max; appendix unlimited.
- **Consistency:** Same KPI layout every meeting; MoM/YoY + variance to plan.
- **Clarity:** One idea per slide; executive takeaway in the title.
- **Accessibility:** Color-blind safe palette; alt text on charts; 14pt+ body text.
- **Decisions:** Each decision item has a 1-page memo with clear **Ask**.
- **Versioning:** Footer shows date + commit hash; filename includes YYYY-MM-DD.
```

---

## Drop-in: `board/board_pack_calendar.yml`

```yaml
materials_sla:
  prereads_days_before: 5   # T-5
  addenda_days_before: 2    # T-2
meeting_flow:
  - step: Draft pack
    owner: Chief of Staff
    due: T-10
  - step: Data refresh complete
    owner: FP&A
    due: T-7
  - step: CEO letter finalized
    owner: CEO
    due: T-6
  - step: Pre-reads posted
    owner: Chief of Staff
    due: T-5
  - step: Addenda close
    owner: Chief of Staff
    due: T-2
  - step: Meeting day
    owner: Chair
    due: T-0
  - step: Minutes + decision log
    owner: Secretary
    due: T+1
```

---

## Drop-in: `board/consent_agenda_template.md`

```markdown
# Consent Agenda — <Meeting Date>
- Approve prior minutes
- Ratify routine grants / option exercises
- Accept committee reports (Audit, Comp, Nom/Gov, Risk & AI)
- Routine vendor renewals (within authority limits)
> Any director may pull an item for discussion.
```

---

## Timebox

* **⏱ 90 minutes:** 10 choose sections/owners • 30 map inputs/sources • 30 KPI catalog • 20 SLA & style guide.

---

Want me to bundle these files in a ready-to-import zip like we did for Week05?
