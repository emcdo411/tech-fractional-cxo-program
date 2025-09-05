# Week04 — Day01: Board Charter Tune-Up (CXO Edition)

## Objectives

* **Crisp scope:** Separate **Board** vs **Advisory** remit, cadence, and outputs.
* **Decision velocity:** Define **decision rights & thresholds** (who recommends/approves; when to escalate).
* **Accountability system:** Lock **committee charters**, **materials SLAs**, and **annual board calendar**.
* **Risk & AI governance:** Make risk, cybersecurity, and **AI/Model Risk** oversight explicit.
* **Change control:** Add **amendment** rules, versioning, and adoption via resolution.

## Lesson Summary

Great charters **speed decisions** and prevent “authority drift.” Make the Board a **force multiplier**: clear remit, measured inputs (KPI pack), and scheduled deep dives (risk, talent, AI). Bake in **conflict/recusal**, **crisis activation**, and **information rights** so tough moments are routine, not chaos.

## Activities

1. **Gap scan (45 min):** Compare current charter to today’s template; list missing sections.
2. **Decision inventory (30 min):** Draft the top 12 decisions with **thresholds** (e.g., CapEx > \$250k; new AI feature with high risk score).
3. **Operating rhythm (30 min):** Set **board calendar** (quarterly themes), **materials SLA** (pre-reads), and **committee charters** (Audit, Comp, Nom/Gov, Risk & AI).
4. **Draft & adopt (45 min):** Update charter v2, attach **Decision Rights Matrix**, log as **Board Resolution**, route to counsel for light review.

## Deliverables

* **Required**

  * `governance/board_charter_v2.md`
  * `governance/decision_rights_matrix.csv`
* **Recommended**

  * `governance/board_calendar.yml`
  * `governance/board_materials_sla.md`
  * `governance/committee_charters/{audit.md,comp.md,nom_gov.md,risk_ai.md}`
  * `governance/conflict_of_interest_policy.md`
  * `governance/board_resolution_adopt_charter_v2.md`

## Acceptance & QA (evidence-based)

* Charter includes **Purpose, Scope, Composition, Committees, Cadence, Materials SLA, Decision Rights, Conflicts/Recusal, Crisis Activation, Information Rights, Amendment, Effective Date**.
* **Decision Rights table** present with thresholds and **R/A/C/I** roles; **AI/Risk triggers** defined.
* **Board calendar** covers strategy, budget, risk, talent, and **AI/Model Risk** deep dives.
* **Materials SLA** specifies pre-read timing, KPI pack, redlines, and consent agenda.
* Adoption captured as a **signed resolution**; version/date recorded.

---

## Drop-in Template — `governance/board_charter_v2.md`

```markdown
# Board Charter (v2)
**Effective Date:** YYYY-MM-DD | **Version:** 2.0 | **Supersedes:** v1.x

## 1) Purpose
The Board oversees strategy, performance, risk, capital allocation, leadership, and long-term value creation.

## 2) Scope & Authority
- **Board**: Approves matters reserved to the Board (see Decision Rights Matrix).
- **Advisory Board**: Non-fiduciary; advice only; no voting rights.
- **Management**: Operates the business; accountable for execution.

## 3) Composition & Independence
Size, independence expectations, skills matrix reference, onboarding, annual self-evaluation.

## 4) Committees
- **Audit** (financials, controls, cyber, compliance)
- **Compensation** (exec pay, equity plan)
- **Nominating & Governance** (composition, policies)
- **Risk & AI** (enterprise risk, model risk, AI governance & ethics)
Each committee operates under a posted charter and reports quarterly to the Board.

## 5) Meeting Cadence & Calendar
- Regular meetings: **Quarterly**; special meetings as needed.
- **Annual calendar** attached (board_calendar.yml): strategy, budget, risk/cyber, talent, AI/Model Risk deep dive.

## 6) Materials & Pre-Reads (SLA)
- Board pack due **>= 5 business days** prior; addenda by **T-2 days**.
- Pack includes **CEO letter, KPI dashboard, risk heatmap, finance pack, people & customers**, decision memos with a one-page **ask**.

## 7) Decision Rights & Thresholds
The **Decision Rights Matrix** (CSV) is incorporated by reference (R/A/C/I + thresholds + escalation).

## 8) Information & Inspection Rights
Directors may request information; management provides timely access, subject to confidentiality.

## 9) Conflicts of Interest & Recusal
Annual disclosure; transaction-specific declarations; conflicted directors **recuse**; minutes note recusal.

## 10) Crisis Activation
Chair/CEO/Lead Director may convene within **24 hours**; interim delegation allowed; cadence to daily if needed.

## 11) Executive Sessions
Non-management directors meet in **every** regular meeting; Chair/Lead Director debriefs CEO.

## 12) Records & Minutes
Minutes reflect decisions, recusals, and dissent; resolutions archived in governance repo.

## 13) Director Development & Evaluation
Annual self-assessment; skills matrix reviewed; onboarding for new directors.

## 14) Amendment
This charter may be amended by Board resolution; versioned in source control.

## 15) Effective Date & Resolution
Adopted on YYYY-MM-DD per the **Board Resolution** (see governance/board_resolution_adopt_charter_v2.md).
```

---

## Decision Rights Matrix — `governance/decision_rights_matrix.csv`

```csv
Decision,Type,Threshold,Recommend (R),Approve (A),Consult (C),Inform (I),Escalation,KPI
Annual Budget,Finance,Full FY,CEO/CFO,Board,Audit,All,"If variance >10% QoQ -> Board",Operating Margin %
Unbudgeted CapEx,Finance,> $250,000,CFO,Board,Audit,CEO,"If >$1M -> Special Mtg",Payback (months)
Debt Facility,Finance,Any new or amended,CFO,Board,Audit,CEO,"If covenant breach risk -> Special",Net Debt / EBITDA
Equity Issuance,Governance,Any issuance,CEO/GC,Board,NomGov,All,"If >10% dilutive -> Shareholder (if req.)",Post-Money Ownership %
M&A LOI,Strategy,Any acquisition,CEO,Board,Audit/NomGov,All,"If EV > 25% of rev -> Special",IRR / Strategic Fit
CEO Hire/Fire,People,N/A,NomGov,Board,Comp,All,"Immediate Special Meeting",Leadership Bench Depth
Option Pool Change,Compensation,> 1% fully diluted,CHRO,Board,Comp,All,,Burn Rate %
AI Feature Release (High-Risk),Risk/AI,Risk score ≥ 7/10,Risk&AI Cttee,Board,Audit/GC,CEO,"If unresolved risks -> delay",Model Risk Exceptions
Data Residency Policy,Compliance,Material change,GC/CISO,Board,Audit/Risk&AI,CEO,,Regulatory Exceptions
D&O Insurance Limits,Governance,Any change,CFO/GC,Board,Audit,CEO,,Coverage Adequacy
```

---

## Board Calendar — `governance/board_calendar.yml`

```yaml
year: 2025
meetings:
  - quarter: Q1
    focus: ["Strategy refresh","AI & Model Risk deep dive","KPI baselines"]
  - quarter: Q2
    focus: ["Product & customer health","Cyber tabletop (board-level)","Talent review"]
  - quarter: Q3
    focus: ["3-year plan & capital allocation","Pricing & margins","AI roadmap checkpoint"]
  - quarter: Q4
    focus: ["Budget approval","Risk heatmap & insurance","Comp & equity plan"]
special_meetings:
  triggers:
    - "M&A LOI signed"
    - "Liquidity event or financing"
    - "Sev-1 incident or material breach"
    - "Model risk exception ≥ 7/10"
materials_due_business_days_before: 5
```

---

## Materials SLA — `governance/board_materials_sla.md`

```markdown
# Board Materials SLA
- **T-5 days:** Board pack delivered (PDF + links).  
- **T-2 days:** Final addenda; consent agenda posted.  
- **Deck limits:** 30 core slides; appendix separate.  
- **KPI pack:** Finance, Growth, Product, Customer, People, Risk (same layout every meeting).  
- **Decision memos:** 1-pager (Context, Options, Risks, Recommendation, Ask).
- **Late materials:** Require Chair/Lead Director approval.
```

---

## Committee Charters (stubs)

* `governance/committee_charters/audit.md` — financials, internal controls, **cyber**, whistleblower.
* `governance/committee_charters/comp.md` — exec comp, equity plans, performance metrics.
* `governance/committee_charters/nom_gov.md` — board composition, evaluations, policies.
* `governance/committee_charters/risk_ai.md` — **ERM**, model risk management, AI governance & ethics, red-team cadence.

**Risk & AI Committee** (key lines to include):

```markdown
- Oversees model lifecycle risks (data, bias, drift, privacy, safety).
- Reviews “High-Risk” AI releases (score ≥ 7/10) before GA.
- Sets red-team and evaluation cadence; tracks exceptions & mitigations.
```

---

## Conflict of Interest Policy — `governance/conflict_of_interest_policy.md`

```markdown
- Annual disclosure of affiliations; update within 10 days of change.
- Meeting-level declaration; conflicted directors **recuse** from discussion and vote.
- Minutes record recusal; quorum excludes recused director(s) for that item.
```

---

## Adoption Resolution — `governance/board_resolution_adopt_charter_v2.md`

```markdown
**Resolved:** The Board hereby adopts **Board Charter v2** effective YYYY-MM-DD, including the Decision Rights Matrix, Board Calendar, Materials SLA, and Committee Charters. The Secretary shall file and version these documents in the governance repository.

Signatures: __________________ (Chair)  __________________ (Secretary)
Date: YYYY-MM-DD
```

---

## Metrics to Track (put in your KPI pack)

* **Decision cycle time** (intake → Board decision)
* **Pre-read compliance** (% delivered on/before T-5)
* **Action item completion** (% closed by next meeting)
* **Risk exceptions** (# open; time-to-close)
* **AI high-risk releases** (# reviewed; mitigations adopted)

---

## Timebox

* **Core (⏱ 90 min):** Gap scan → Decision inventory → Rhythm → Draft v2.
* **Stretch (+30 min):** Counsel review + adoption resolution + repo versioning.

---

### How to use this today

1. Copy the templates into your repo under `governance/`.
2. Fill thresholds & names in **decision\_rights\_matrix.csv**.
3. Update dates, version, and sign the **resolution**.
4. Add the Board Calendar to your exec rhythm and start measuring the 5 metrics above.
