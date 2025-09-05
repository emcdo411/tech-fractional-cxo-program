# Week05 — Day06: Enablement, Change & Adoption Analytics (CXO Edition)

## Objectives
- Launch a **role-based enablement plan** (learning paths, office hours, champions).
- Define **adoption KPIs** and analytics (who’s using what, to what effect).
- Publish a **comms plan** and feedback loops to iterate safely.

## Lesson Summary
Adoption is a people program with data. Make change visible, supportive, and measurable with clear learning paths, champions, and dashboards that show usage, impact, and safety.

## Activities (⏱ 75–90 min)
- **Learning paths (25m):** By role (Ops, Finance, Sales, Eng, Exec); map skills → activities → artifacts.
- **Adoption KPIs (25m):** Define metrics, targets, and dashboards (who uses what, outcomes, safety).
- **Comms & feedback (20m):** Cadence, channels, office hours, release notes, surveys.
- **Champions (10–20m):** Nominate cross-functional champions; define responsibilities and incentives.

## Deliverables
- `people/enablement_plan.md`
- `people/learning_paths.csv`
- `metrics/adoption_kpis.md`
- `comms/change_comms_plan.md`
- `people/champions_program.md`

## Acceptance & QA
- Calendar published; **champions named** in each function.
- Dashboard spec includes **MAU, task completion lift, time saved, CSAT**, and **safety incidents**.

---

## Adoption KPIs (example)
| KPI                        | Owner  | Target           | Notes                 |
|---------------------------|--------|------------------|-----------------------|
| Monthly Active Users (MAU)| PMO    | +50% in 60 days  | Exclude test accts    |
| Task Time Saved           | Ops Lead | ≥ 30%           | From baseline study   |
| SME Override Rate         | QA Lead | ≤ 10%           | Falling trend         |
| Safety Blocks             | SecOps | ≤ 2/mo           | None Sev-1            |

---

## Enablement Plan (outline for `people/enablement_plan.md`)
- **Purpose & Scope:** Who is enabled, for what workflows, by when.
- **Roles & Audiences:** Ops, Finance, Sales, Engineering, Exec.
- **Learning Paths:** Modules, prerequisites, assessments, artifacts.
- **Delivery Modes:** Live sessions, async content, office hours.
- **Schedule & Cadence:** Weekly sessions, monthly refreshers.
- **Champions Program:** Selection, duties, incentives, reporting.
- **Measurement:** KPIs, survey cadence, certification criteria.
- **Risks & Mitigations:** Low adoption, tool sprawl, policy drift.

## Learning Paths (columns for `people/learning_paths.csv`)
```

Role,Module,Outcome,Artifact,Duration,Owner,Assessment
Ops,Automation Basics,Build/Run workflow SOP,ops/flow\_runbook.md,60m,Ops Lead,Checklist
Finance,FinOps 101,Set budgets & alerts,finance/finops\_policy.md,45m,CFO,Quiz
Sales,Copilot for CRM,Compose summaries,sales/copilot\_playbook.md,45m,Sales Enablement,Practical
Engineering,Data Contracts,Write YAML contracts,data/contracts/\*.yml,60m,Data Eng,Peer review
Exec,IC Mechanics,Decide with gates,governance/ai\_ic\_charter.md,30m,CFO/CTO,Discussion

```

## Adoption KPI Spec (outline for `metrics/adoption_kpis.md`)
- **Metric definitions** (owner, formula, source).
- **Targets & thresholds** (green/amber/red).
- **Data freshness** (update cadence).
- **Alert routes** (on-call, email/Slack).
- **Dashboard layout** (usage, impact, safety).

## Change Comms Plan (outline for `comms/change_comms_plan.md`)
- **Audiences & Channels:** Email, Slack, intranet, town halls.
- **Cadence:** Weekly updates, monthly summaries, release notes.
- **Templates:** Launch, update, incident, deprecation.
- **Feedback Loops:** Surveys, AMA sessions, office hours.

## Champions Program (outline for `people/champions_program.md`)
- **Selection Criteria:** Role coverage, credibility, availability.
- **Responsibilities:** Local training, feedback, hygiene checks.
- **Enablement:** Early access, playbooks, support channel.
- **Recognition:** Badges, spot awards, leadership shout-outs.

## Timebox
- **⏱ 75–90 min total:** 25 learning paths • 25 KPIs • 20 comms • 10–20 champions
```
