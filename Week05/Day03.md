# Week05 — Day03: Automation Factory (RPA + iPaaS) with P&L Tie-In (CXO Edition)

## Objectives
- Stand up an **Automation Operating Model**: intake → scoring → build → monitor → measure savings.  
- Ship **two automations** tied to P&L (one workflow/RPA + one data sync) with **rollback** and **observability**.  
- Publish a **financial benefits model** (time saved × loaded rate; error reduction × cost).

## Lesson Summary
Automation pays when it’s governed and measured. Build a lightweight factory with clear guardrails, fast paths for low-risk wins, and a benefits scoreboard executives trust.

## Activities (⏱ 90–120 min)
- **Intake & scoring (25m):** Stand up a backlog form and an ROI scoring rubric.  
- **Build two flows (45–60m):** One workflow/RPA; one data sync; add alerts, run health checks, and define rollback.  
- **Measure (20m):** Capture baseline → after; publish time saved and quality lift.  
- **Runbooks (10–15m):** Draft on-call, rollback, and change-control steps.

## Deliverables
- `ops/automation_operating_model.md` (roles, gates, standards)  
- `ops/automation_intake.csv` (candidate list with business owner)  
- `ops/automation_scorecard.csv` (ROI / risk / effort)  
- `ops/automation_playbooks.md` **and** `ops/flow_runbooks.md`  
- `metrics/automation_benefits.csv` (before/after metrics)

## Acceptance & QA
- **Two flows** in production with **monitoring + rollback**, delivering **≥ 30% time saved** *or* measurable **error-rate reduction**.  
- Scorecard published; benefits show **owner** and the **financial math** behind the savings.

## ROI Scoring (example)
| Field                      | Weight | Example |
|---------------------------|:------:|:------:|
| Time saved / month (hrs)  |  0.40  |   80   |
| Error reduction / mo (%)  |  0.20  |   60   |
| Risk & compliance fit     |  0.20  |  Pass  |
| Build effort (L/M/H)      |  0.20  |  Med   |

> **Tip:** Convert hours saved to dollars using a loaded rate (e.g., `$/hour`) and include a confidence factor (e.g., 70%) for conservative estimates.

## Operating Model (at a glance)
- **Intake:** Simple form capturing *problem, current effort, volume, owner, data touchpoints*.  
- **Triage & Score:** Apply the ROI rubric + risk screen (privacy, access, separation of duties).  
- **Build:** Standardized patterns (RPA/workflow or iPaaS sync) with unit tests and environment tags.  
- **Release:** Change control with rollback plan and on-call contact.  
- **Measure:** Publish **before/after** metrics to `metrics/automation_benefits.csv` and review monthly.

## Suggested Metrics (track in `metrics/automation_benefits.csv`)
- Cycle time (minutes/task) — baseline vs post-automation  
- Throughput (tasks/day) — baseline vs post  
- Error rate (%) — baseline vs post  
- Hours saved/month — calculated  
- Dollar savings/month — hours saved × loaded rate  
- Incidents (count/severity) — trend

## Timebox
- **⏱ 90–120 min total:** 25 intake & scoring • 45–60 build • 20 measure • 10–15 runbooks
