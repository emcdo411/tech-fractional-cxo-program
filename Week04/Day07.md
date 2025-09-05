# Week04 — Day07: Weekly Review & Readiness Gate (CXO Edition)

## Objectives

* Validate that **Month One artifacts** are complete, consistent, and versioned.
* Score against **readiness gate criteria** and make a **Go / Conditional Go / No-Go** decision for the next phase.
* Convert remaining gaps into an **owned, dated action register**.

## Lesson Summary

End the month like an operator: confirm artifacts, score the gate, decide, and move. Evidence beats opinions—tie everything to files, dates, and owners. If anything is amber/red, proceed as **Conditional Go** with clear conditions and a re-check date.

## Activities (60–75 min)

1. **Artifact inventory (15 min):** Verify each Month One file exists, is versioned, and aligns with policies.
2. **Gate scoring (20 min):** Apply the criteria; score Pass/Partial/Fail (or 0/1).
3. **Gaps → actions (15 min):** Assign owner, date, and acceptance test.
4. **Decision & comms (10–25 min):** Record Go/Conditional Go/No-Go, conditions, and next-phase kickoff date.

## Deliverables

* **Required**

  * `governance/week04_review_and_gate.md`
* **Recommended**

  * `governance/readiness_gate_criteria.csv`
  * `governance/artifact_inventory.csv`
  * `exec/weekly_brief_week04.md` (one-pager summary)
  * `exec/action_register.csv` (carry-forward actions)

## Acceptance & QA

* The review file lists **completed artifacts, gaps, and an explicit Go/No-Go** decision with sign-off.
* Readiness criteria include **owner, evidence link, and score**; **Conditional Go** items have **dated conditions**.

---

## Drop-in: `governance/week04_review_and_gate.md`

```markdown
# Week04 Review & Readiness Gate (Month One)
**Date:** YYYY-MM-DD | **Chair:** <Name> | **Facilitator:** <Name> | **Recorder:** <Name>  
**Scope:** Confirm Month One artifacts and decide readiness for Phase 2 (Build & Pilot).  
**Decision Options:** Go | **Conditional Go** | No-Go

---

## 1) Artifact Inventory (Month One)
> Status: ✅ Complete | 🟨 Partial | ❌ Missing | 🔁 Needs Sync  
> Include file path, owner, last update (date/commit), and notes.

| Artifact | Path | Owner | Status | Last Update (date / commit) | Notes / Evidence |
|---|---|---|---:|---|---|
| Board Charter v2 | governance/board_charter_v2.md | GC | ✅ | 2025-09-04 / `abc123` | Decision rights table present |
| Decision Rights Matrix | governance/decision_rights_matrix.csv | GC | ✅ | 2025-09-04 / `abc124` | AI gate thresholds included |
| Decision Log | governance/decision_log.md | CoS | ✅ | 2025-09-04 / `abc128` | 5+ rows with RACI & links |
| Governance Calendar | operations/governance_calendar.md | CoS | ✅ | 2025-09-04 / `abc129` | Forums, cadence, inputs, owners |
| Board Pack Outline | board/board_pack_outline.md | CoS/FP&A | 🟨 | 2025-09-03 / `abc12a` | KPI catalog WIP |
| Mini Audit Checklist | audits/mini_audit_checklist.csv | Audit Lead | ✅ | 2025-09-04 / `abc12b` | 10 checks complete |
| Mini Audit Report | audits/mini_audit_report.md | Audit Lead | ✅ | 2025-09-04 / `abc12c` | 5 top gaps, actions listed |
| Decision Memo Template | board/decision_memo_template.md | CoS | ✅ | 2025-09-04 / `abc12d` | Standard one-pager |
| Decision Memo Example | board/decision_memo_example.md | COO | ✅ | 2025-09-04 / `abc12e` | Vendor selection |
| Pre-Brief Notes | board/prebrief_notes.md | CEO | ✅ | 2025-09-04 / `abc12f` | Goals/constraints drafted |
| Talk Track | board/talk_track.md | CEO | ✅ | 2025-09-04 / `abc130` | Five-point, clear ask |

**Summary:** All core artifacts present; KPI catalog completion is the only partial.

---

## 2) Readiness Gate Criteria & Scores
> Scoring: Pass = 1, Partial = 0.5, Fail = 0.  
> **Gate Rule:** Go if **Score ≥ 0.85** and **no Red** (Fail) in Governance/Security/Finance. Otherwise consider **Conditional Go** with dated conditions.

| Criterion | Owner | Evidence | Score (1/0.5/0) | Notes |
|---|---|---|---:|---|
| Charter & Decision Rights adopted by Board | GC | signed resolution / minutes | 1 | Adopted 2025-09-04 |
| Decision Log active (≥5 entries, last 30d) | CoS | governance/decision_log.md | 1 | Current |
| Governance Calendar in use (SLA T-3/T-1) | CoS | ops calendar file | 1 | Posted |
| Board Pack Outline + KPI catalog | FP&A | board/kpi_catalog.csv | 0.5 | Catalog 80% complete |
| Mini Audit run; actions created | Audit Lead | audits/mini_audit_report.md | 1 | Actions dated |
| Security guardrails (admin FIDO2 plan) | CISO | policy and rollout plan | 0.5 | 2 admins on OTP; due 09-20 |
| Finance controls (AP SoD, access review) | Controller | evidence files | 1 | Q2 access attestation scheduled |
| AI risk gate defined (score ≥7/10) | CPO | risk & AI committee notes | 1 | In criteria / calendar |
| Pre-brief & Talk Track ready | CEO | board files | 1 | Ready for meeting |
| Action register in repo | CoS | exec/action_register.csv | 1 | Live |

**Gate Score (avg):** **0.85** → **Decision candidate: Conditional Go** pending two conditions (below).

---

## 3) Findings & Gaps (Top Items)
| ID | Gap | Severity | Owner | Due | Acceptance Test |
|---|---|---:|---|---|---|
| KPI-01 | KPI catalog not fully defined | Med | FP&A | 2025-09-12 | `board/kpi_catalog.csv` complete; linked in pack |
| SEC-OTP | Two admins still on OTP | High | CISO | 2025-09-20 | FIDO2 enforced; attestation posted |

---

## 4) Decision
> **Choose one** and record conditions if Conditional Go.

- **Decision:** **Conditional Go**  
- **Conditions:**  
  1) **KPI-01** closed by **2025-09-12**  
  2) **SEC-OTP** closed by **2025-09-20**  
- **Re-check:** **2025-09-21** (10-min gate confirm in ELT)  
- **Next Phase Kickoff (tentative):** **2025-09-23**

**Sign-off:**  
- Chair: ________________________  Date: __________  
- CEO:   ________________________  Date: __________  
- GC:    ________________________  Date: __________

---

## 5) Metrics (to carry into Phase 2)
- **Pre-read SLA hit rate** (≥ 90%)  
- **Decision cycle time** (median, intake → decision)  
- **Audit action closure rate** (by due date)  
- **AI high-risk gate compliance** (% of releases scored & reviewed)  
- **KPI catalog completeness** (100% of pack KPIs have owner, formula, target)

---

## 6) Attachments
- Artifact inventory CSV: `governance/artifact_inventory.csv`  
- Gate criteria CSV: `governance/readiness_gate_criteria.csv`  
- Action register: `exec/action_register.csv`
```

---

### Optional CSVs (ready to create)

**`governance/readiness_gate_criteria.csv`**

```csv
Criterion,Owner,Evidence,Score,Notes,Must Pass (Y/N)
Charter & Decision Rights adopted,GC,governance/board_charter_v2.md;minutes,1,,Y
Decision Log active (>=5 entries),CoS,governance/decision_log.md,1,,Y
Governance Calendar in use,CoS,operations/governance_calendar.md,1,,N
Board Pack Outline + KPI catalog,FP&A,board/kpi_catalog.csv,0.5,"80% complete",Y
Mini Audit run; actions created,Audit Lead,audits/mini_audit_report.md,1,,Y
Security guardrails (admin FIDO2),CISO,evidence/IdP_policy.pdf,0.5,"2 admins on OTP",Y
Finance controls (AP SoD; access review),Controller,evidence/AP_workflow.csv;Finance_access_review.pdf,1,,Y
AI risk gate defined,CPO,committee notes; decision_rights_matrix.csv,1,,Y
Pre-brief & Talk Track ready,CEO,board/prebrief_notes.md;board/talk_track.md,1,,N
Action register in repo,CoS,exec/action_register.csv,1,,Y
```

**`governance/artifact_inventory.csv`**

```csv
Artifact,Path,Owner,Status,Last Update,Notes
Board Charter v2,governance/board_charter_v2.md,GC,Complete,2025-09-04,"Includes decision rights"
Decision Rights Matrix,governance/decision_rights_matrix.csv,GC,Complete,2025-09-04,"AI thresholds added"
Decision Log,governance/decision_log.md,CoS,Complete,2025-09-04,"5+ entries"
Governance Calendar,operations/governance_calendar.md,CoS,Complete,2025-09-04,"SLA T-3/T-1"
Board Pack Outline,board/board_pack_outline.md,CoS/FP&A,Partial,2025-09-03,"KPI catalog WIP"
Mini Audit Checklist,audits/mini_audit_checklist.csv,Audit Lead,Complete,2025-09-04,"10 checks"
Mini Audit Report,audits/mini_audit_report.md,Audit Lead,Complete,2025-09-04,"5 gaps"
Decision Memo Template,board/decision_memo_template.md,CoS,Complete,2025-09-04,"Standard"
Decision Memo Example,board/decision_memo_example.md,COO,Complete,2025-09-04,"Vendor selection"
Pre-brief Notes,board/prebrief_notes.md,CEO,Complete,2025-09-04,"Aligned"
Talk Track,board/talk_track.md,CEO,Complete,2025-09-04,"5-point"
```

---

## Timebox

* **⏱ 60–75 min:** 15 inventory • 20 scoring • 15 actions • 10–25 decision & comms.

