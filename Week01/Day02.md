# Week01 - Day02: Decision Rights and RACI

## Objectives
- Map 5–7 recurring decisions to clear owners and escalation paths.
- Build a simple RACI for 2 core processes (e.g., vendor onboarding, release).

## Lesson Summary
Clear decision rights cut rework and conflict. Make *who decides what* visible, add thresholds, SLAs, and escalation rules. Keep it lightweight and easy to maintain.

## Activity
1) List your top recurring decisions (budget, hiring, vendor, security, product).  
2) For each decision, define: **trigger/threshold**, **R/A/C/I**, **SLA**, **escalation**.  
3) Create 2 RACIs for core processes you run every week/month.

## Deliverable
- **File:** `governance/decision_rights_and_raci.md`  
- Include **Decision Rights Matrix** (table) + **2 process RACIs**.

## Acceptance & QA
- ≥5 decisions covered with **one** Accountable per decision.
- Each decision has **Trigger/Threshold**, **SLA (“decide within X days”)**, and **Escalation path**.
- 2 RACIs are complete (no role left blank for R/A).
- Review cadence stated (e.g., “quarterly tune-up”).

---

## Decision Rights Matrix (Template)
| Decision | Trigger / Threshold | Responsible (R) | Accountable (A) | Consulted (C) | Informed (I) | SLA | Escalation |
|---|---|---|---|---|---|---|---|
| Vendor approval | New vendor or > \$25k/yr | Ops | CIO | Security, Finance | CEO | 5 biz days | If SLA missed → CEO |
| Production rollback | Sev-1 incident | SRE | CTO | Product, Support | All staff | 15 min | CTO → CEO |
| Price change | >3% list price delta | Product | CEO | Sales, Finance | Board | 10 biz days | CEO → Board |
| New hire | Backfill or plan add | Hiring Manager | CEO | People Ops, Finance | Team | 7 biz days | CEO |
| Budget reclass | >\$10k variance | Finance | CFO | Dept Heads | CEO | 5 biz days | CFO → CEO |

> **Tip:** Adjust thresholds (\$ / severity) to match your context.

---

## Process RACI — Example (Vendor Onboarding)
| Task | Ops | CIO | Security | Finance | CEO |
|---|---:|---:|---:|---:|---:|
| Select vendor | **R** | C | C | C | I |
| Security review | C | C | **R** | I | I |
| Contract & terms | C | C | C | **R** | I |
| Final approval (> \$25k) | I | **A** | C | C | I |
| Record & renew | **R** | C | C | C | I |

## Process RACI — Example (Weekly Business Review)
| Task | COO | CIO | Finance | Product | Sales |
|---|---:|---:|---:|---:|---:|
| Curate KPI pack | **R** | C | C | C | C |
| Run WBR meeting | **A** | R | C | C | C |
| Capture decisions | **R** | C | C | C | C |
| Update decision log | **R** | C | C | C | C |

## Definition of Done
- `governance/decision_rights_and_raci.md` saved with the tables above completed.  
- SLA & escalation present for each decision.  
- Review cadence written (e.g., “Quarterly, or on trigger change”).

