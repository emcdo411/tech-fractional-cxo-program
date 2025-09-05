# Week04 — Day04: Mini Audit Checklist & Report (CXO Edition)

## Objectives

* Run a **lightweight, risk-based internal audit** across **governance, security, and finance** (plus AI risk hot-spots).
* **Capture evidence, owners, and dates** so findings convert to action—fast.
* Produce a **board-ready one-pager** with gaps, risk scores, and next steps.

## Lesson Summary

Short audits beat long ones if they are **risk-weighted**, **evidence-backed**, and **owned**. Use a 10–15 control sweep, score by **severity × likelihood**, attach **evidence links**, and log **actions** with due dates. Map each check to reference frameworks (SOC 2 / ISO 27001 / NIST CSF) to stay future-proof.

## Activities (90 minutes)

1. **Scope (10 min):** Pick 10–15 high-impact checks (mix of governance, security, finance, AI).
2. **Checklist (25 min):** Fill the CSV; define **test** and **evidence path** for each control.
3. **Fieldwork (30 min):** Collect evidence screenshots/exports; mark **Pass/Fail/Partial**.
4. **Scoring (10 min):** Rate **Severity (1–5)** + **Likelihood (1–5)** → **RiskScore = Sev×Lik**.
5. **Report (15 min):** Summarize top 5 gaps, owners, and dates; set **re-test** cadence.

## Deliverables

* **Required**

  * `audits/mini_audit_checklist.csv`
  * `audits/mini_audit_report.md`
* **Recommended**

  * `audits/findings_register.csv`
  * `audits/evidence/` (folder with dated subfolders/screenshots)
  * `audits/scoring_rubric.md` (kept simple; see below)

## Acceptance & QA

* Checklist has **≥10 rows** with **Control Objective, Test, Evidence link, Result, Severity, Likelihood, RiskScore, Owner, Due Date, Framework Map**.
* Report lists **top gaps (min 5)** with **owners & dates**, a **summary score**, and a **re-test date**.

---

## Drop-in CSV — `audits/mini_audit_checklist.csv`

> Columns are tuned for speed, evidence, and traceability.

```csv
Domain,Control ID,Control Objective,Test / Procedure,Evidence (path or link),Result (Pass|Fail|Partial),Severity (1-5),Likelihood (1-5),RiskScore,Owner,Due Date,Framework Map,Notes
Governance,GOV-01,Board charter defines decision rights & cadence,"Review charter v2; verify decision matrix exists and is used in last 2 meetings",governance/board_charter_v2.md,Partial,3,2,6,GC,2025-09-30,"SOC2-CC1, ISO27001-5.3, NIST-ID.GV","Decision matrix present but thresholds missing for AI releases"
Governance,GOV-02,Decision log maintained and current,"Check decision_log.md last 60 days; 5+ decisions with RACI & links",governance/decision_log.md,Pass,2,2,4,Chief of Staff,–,"SOC2-CC1, ISO27001-5.1","Good coverage; add 'Superseded' tag for reversals"
Security,SEC-01,Admin MFA with FIDO2 enforced,"Verify IdP policy; sample 10 admins; check last login factors",evidence/2025-09/IdP_MFA_export.csv,Partial,5,3,15,CISO,2025-09-20,"SOC2-CC6, ISO27001-A.5.17, NIST-PR.AC","2 admins still on OTP"
Security,SEC-02,Endpoint EDR coverage ≥ 98%,"Pull MDM/EDR coverage report; reconcile to headcount",evidence/2025-09/EDR_coverage.png,Fail,4,3,12,IT Lead,2025-09-25,"SOC2-CC6, ISO27001-A.5.23, NIST-PR.IP","18 unmanaged endpoints detected"
Security,SEC-03,Backups for critical systems w/ monthly restore test,"Review backup jobs and last restore report",evidence/2025-09/Backup_restore_log.pdf,Pass,4,2,8,Infra Lead,–,"SOC2-CC7, ISO27001-A.8.13, NIST-PR.PT","Restore test passed 09/01"
Security/AI,AI-01,High-risk AI releases gated and logged,"Sample 2 releases; confirm risk score ≥7 triggers committee approval",evidence/2025-09/AI_release_checklist.xlsx,Partial,4,3,12,CPO,2025-10-05,"SOC2-CC1, ISO27001-5.30, NIST-GV","One release missing approval memo"
Finance,FIN-01,Segregation of duties in AP (initiate vs approve),"Review AP workflow; sample 10 invoices",evidence/2025-09/AP_workflow_export.csv,Pass,4,2,8,Controller,–,"SOC2-CC6, ISO27001-A.5.3, NIST-PR.AC","Clean sample"
Finance,FIN-02,Revenue recognition policy applied,"Trace 5 contracts from CRM→Billing→GL",evidence/2025-09/RevRec_trace.xlsx,Partial,4,2,8,Revenue Ops,2025-10-01,"SOC2-CC3, ISO27001-5.10, NIST-ID.BE","2 contracts missing allocation note"
Finance,FIN-03,Access to finance systems reviewed quarterly,"Check last access review and remediation tickets",evidence/2025-09/Finance_access_review.pdf,Fail,3,3,9,FP&A,2025-09-28,"SOC2-CC6, ISO27001-A.5.18, NIST-PR.AC","No Q2 attestation on file"
Security,SEC-04,Incident response playbook tested,"Confirm tabletop in last 90 days; PIRs documented",playbooks/incident_playbook_outage.md,Pass,3,2,6,SRE Lead,–,"SOC2-CC7, ISO27001-A.5.24, NIST-RS.IM","Tabletop 08/15; action items tracked"
Data,DATA-01,Data loss prevention on email/storage,"Review DLP policy & recent events; sample alerts",evidence/2025-09/DLP_events.csv,Partial,3,3,9,Security Eng,2025-10-10,"SOC2-CC6, ISO27001-A.8.12, NIST-PR.DS","Rules tuned; actioning backlog"
```

> **Scoring rubric (simple):** Severity: 1=Low impact … 5=Critical; Likelihood: 1=Rare … 5=Frequent. **RiskScore = Sev × Lik**.
> **Color bands:** 1–5 = Green, 6–10 = Amber, 11–25 = Red.

---

## Drop-in Report — `audits/mini_audit_report.md`

```markdown
# Mini Audit Report — Governance, Security, Finance
**Date:** YYYY-MM-DD | **Owner:** <Audit Lead> | **Scope Window:** last 90 days  
**Method:** Risk-based sampling (10–15 checks). Evidence stored under `audits/evidence/YYYY-MM/`.

## Executive Summary
- **Overall Rating:** ⬤ Green ⬤ **Amber** ⬤ Red
- **Findings:** 4 Pass | 5 Partial | 2 Fail
- **Top Risks (RiskScore ≥ 11):** SEC-01 (15), AI-01 (12)
- **Next Checkpoint:** Re-test on YYYY-MM-DD (within 30 days)

## Heatmap (by RiskScore)
| Score Band | Items                            |
|------------|-----------------------------------|
| 11–25 (Red)| SEC-01, AI-01                    |
| 6–10 (Amber)| GOV-01, SEC-02, FIN-02, FIN-03, DATA-01 |
| 1–5 (Green)| GOV-02, SEC-03, FIN-01, SEC-04   |

## Top Gaps & Actions
| ID     | Gap Summary                                        | Owner       | Action(s)                                                | Due Date   | Status   |
|--------|-----------------------------------------------------|-------------|----------------------------------------------------------|------------|----------|
| SEC-01 | 2 admins still on OTP vs FIDO2                      | CISO        | Enforce FIDO2 policy; replace OTP tokens; attest rollout | 2025-09-20 | Open     |
| AI-01  | Missing approval memo for one high-risk AI release  | CPO         | Retroactive committee review; attach memo; update log    | 2025-10-05 | Open     |
| SEC-02 | 18 devices lack EDR                                 | IT Lead     | Enroll endpoints; tune auto-enrollment; verify coverage  | 2025-09-25 | Open     |
| FIN-03 | No Q2 finance access attestation                    | FP&A        | Run Q2 review; produce sign-off; ticket exceptions       | 2025-09-28 | Open     |
| DATA-01| DLP alerts backlog                                  | Sec Eng     | Triage top 50; tune rules; publish weekly summary        | 2025-10-10 | Open     |

## Scope & Sampling
- **Domains:** Governance (2), Security (5), Finance (3), Data/AI (1)
- **Sampling:** 10–15 controls, weighted by last quarter incidents and change velocity
- **Framework Map:** SOC 2 (CC), ISO 27001:2022 (clauses), NIST CSF 2.0

## Evidence Index (examples)
- `audits/evidence/2025-09/IdP_MFA_export.csv` (SEC-01)
- `audits/evidence/2025-09/EDR_coverage.png` (SEC-02)
- `audits/evidence/2025-09/AI_release_checklist.xlsx` (AI-01)
- `audits/evidence/2025-09/AP_workflow_export.csv` (FIN-01)

## Metrics & Follow-Up
- **Fix rate:** % of actions closed by due date
- **Time to Green:** days until all Red items drop to Amber/Green
- **Recurrence:** items re-opened within 90 days

> **Re-test Plan:** Validate SEC-01/AI-01/SEC-02 on YYYY-MM-DD; update Decision Log and brief ELT.
```

---

## (Optional) Findings Register — `audits/findings_register.csv`

```csv
Finding ID,Related Control,Title,Severity,Likelihood,RiskScore,Owner,Opened,Due,Status,Resolution
F-2025-001,SEC-01,"Admins on OTP",5,3,15,CISO,2025-09-04,2025-09-20,Open,"Moving to FIDO2 keys; policy updated"
F-2025-002,AI-01,"Missing high-risk AI approval",4,3,12,CPO,2025-09-04,2025-10-05,Open,"Retroactive review scheduled"
```

## (Optional) Scoring Rubric — `audits/scoring_rubric.md`

```markdown
- **Severity (Impact):** 1=Minimal, 2=Limited, 3=Moderate, 4=High, 5=Critical (legal/financial/customer harm).
- **Likelihood:** 1=Rare, 2=Unlikely, 3=Possible, 4=Likely, 5=Frequent.
- **RiskScore:** Severity × Likelihood.
- **Color Bands:** 1–5 Green; 6–10 Amber; 11–25 Red.
- **Fail vs Partial:** Fail = control absent/ineffective; Partial = exists but gap(s) reduce effectiveness.
```

---

## Timebox

* **⏱ 90 min:** 10 scope • 25 checklist • 30 evidence • 10 scoring • 15 report.
* **Stretch (+30 min):** Map gaps to **Decision Log** and create JIRA tickets.

---
