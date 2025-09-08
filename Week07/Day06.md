# Week07 — Day06: Change Management, Enablement & Champions Network

*Save as:* `wk07/day06_change_enablement_champions.md`

> **CXO Lens (Deloitte-grade):** Tools don’t transform companies—**people + rituals** do. We stand up a **repeatable enablement engine** and a **Champions network** that turns early wins into durable behavior change.

---

## Why this matters (board rationale)

* **Speed to value:** A trained, supported field reduces time-to-first-value and help-desk drag.
* **Risk control:** Consistent rituals (office hours, change stories, post-launch surveys) surface risks early.
* **Scalable culture:** Champions create peer-to-peer momentum that central teams alone can’t maintain.

---

## Objectives (today)

* Launch a **Champions network** per BU/region with **clear incentives and charter**.
* Publish **enablement paths** (101 → role labs → certs) and **office hours**.
* Establish **comms cadence** and **change stories** that travel across the org.

---

## Lesson Summary

Adoption requires **clarity** (what, why, when), **safety** (where to ask, how to revert), and **momentum** (wins, recognition). We wire **feedback loops** into every ritual so learnings cycle back into roadmaps and evals.

---

## Activities (⏱ 75–90 minutes)

### 1) Stakeholder Map (20m)

Identify who wins/loses and the narrative required.

| Persona / Group | Gains (From → To)                      | Concerns                  | Message Hook                          | Owner  |
| --------------- | -------------------------------------- | ------------------------- | ------------------------------------- | ------ |
| Frontline Ops   | Manual lookup → 1-click copilot        | Accuracy, speed           | “Fewer clicks, same controls”         | PM     |
| Sales           | Cold prep → auto-brief + CRM writeback | Hallucination, compliance | “Cited briefs. You review, we draft.” | RevOps |
| Legal/Sec       | Ad hoc checks → policy-in-pipeline     | PII, auditability         | “Proof on every release”              | CISO   |
| Finance         | Unpredictable spend → unit economics   | Sprawl, lock-in           | “Spend SLOs + dashboards”             | FinOps |

### 2) Enablement Plan (25m)

Design the curriculum and cadence.

| Track                       | Audience       |       Format | Length | Prereqs        | Outcomes                         |
| --------------------------- | -------------- | -----------: | -----: | -------------- | -------------------------------- |
| **AI 101 (Trust & Safety)** | All ICs        | Live + async |    60m | None           | What AI can/can’t do; guardrails |
| **Role Lab: Ops Copilot**   | Ops            |     Hands-on |    90m | 101            | Complete 3 guided tasks          |
| **Role Lab: Sales Briefs**  | Sales          |     Hands-on |    90m | 101            | Create, cite, log 2 briefs       |
| **Champion Bootcamp**       | Champions      |       Cohort | 2×120m | 101 + role lab | Triage, demo, collect feedback   |
| **Manager Enablement**      | People leaders |         Live |    60m | 101            | Coach via metrics and stories    |

Artifacts:

* **Learning paths** (`wk07/enablement/plan.md`)
* **Office hours** calendar (weekly per region/time-zone)
* **Assessment & micro-certs** (badges in LMS)

### 3) Champions Charter (20m)

Codify expectations and incentives.

**Role:** Local first responder, demo leader, feedback router, metrics owner
**Time:** \~2h/week; **Council:** monthly cross-function forum
**Incentives:** Recognition in town hall, learning budget, badge, performance credit

**Charter excerpt (`wk07/champions/charter.md`):**

```md
Purpose: accelerate adoption, surface risks early, and close the loop from user feedback → evals → roadmap.
Expectations: host 1 demo/mo; file 5 labeled feedback items/mo; attend council; maintain local FAQ.
Incentives: spotlight + stipend + badge; input to roadmap priorities.
```

### 4) Comms Pack (10–25m)

Ship templates people will actually use.

* **Kickoff email** (Exec sponsor)
* **Slack/Teams posts** (launch, weekly “What’s new,” win of the week)
* **Demo Day deck** (10 slides: problem → flow → safeguards → metrics)
* **One-pager** per use case (benefits, sources, limits, help links)

---

## Deliverables

* `wk07/enablement/plan.md` — learning paths, schedules, instructors, assessments
* `wk07/champions/charter.md` — roles, incentives, calendar, council agenda
* `wk07/comms/starter_pack.zip` — email, Slack posts, demo deck, one-pagers
* `wk07/enablement/office_hours.md` — regions, links, on-call rotation

---

## Acceptance & QA

* **≥1 Champion per function/region** named with kickoff date and council invite.
* **Office hours** published (recurring link, owner, agenda).
* **Comms pack** localized for **ICs** and **leaders** (two versions).
* **Feedback loop** documented: where signals go, who triages, SLA to disposition.

---

## Playbooks & Templates

### A) Manager Talking Points (change story)

* **From:** ad-hoc drafts, unclear sources
* **To:** cited drafts with **Why-this** explainer & rollback proof
* **Ask:** team completes 2 tasks/week in the lab; join office hours if blocked
* **Measure:** tasks/session ↑; grounded rate ↑; time-to-first-draft ↓

### B) Office Hours Agenda (45m)

1. Wins & metrics (5m)
2. Demo: new pattern/feature (10m)
3. Live triage of 2 user issues (15m)
4. Feedback labeling & next steps (10m)
5. Reminders & survey (5m)

### C) Slack Templates

**Launch:**

> 🚀 *Now live:* Ops Copilot (v1). 3 cited sources, “Why-this” explainer, and safe rollback. Try the 10-min lab → <link>. Office hours Wed 11:00–11:45. #champions for fast help.

**Win of the Week:**

> 🏆 Win: Claims team cut drafting time 28% with citations reviewed in-line. Replay here <link>. Tag your Champion @name for help.

---

## Feedback → Roadmap (closed loop)

**Signal sources:** thumbs, inline edits, comments, office-hour notes, champion reports
**Routing:**

* Accuracy/tone → **prompt library** backlog
* Missing source/grounding → **retrieval tuning**
* Latency → **SRE/Platform**
  **SLA:** triage ≤ **24h**; disposition ≤ **5 biz days**; outcome posted in **#whats-new**

---

## Metrics (dashboards)

* **Adoption:** DAU/WAU, task completion rate, repeat usage
* **Trust:** citation open rate, source CTR, confidence mix
* **Enablement:** lab completions, office-hour attendance, time-to-competency
* **Champions:** feedback items labeled/mo, time-to-resolution, NPS (team)
* **Change health:** backlog aging, win stories/week, regression escapes

---

## RACI (snapshot)

| Workstream                | R (Doer)       | A (Accountable) | C (Consulted)       | I (Informed) |
| ------------------------- | -------------- | --------------- | ------------------- | ------------ |
| Enablement curriculum     | L\&D, PM       | VP Product      | Security, Legal     | Org          |
| Champions network         | Regional Leads | COO             | HR, L\&D            | Org          |
| Office hours & support    | Champions      | Head of Support | PM, SRE             | Org          |
| Comms & change stories    | PMM/Comms      | CPO             | Exec Sponsor, Brand | Org          |
| Feedback triage & routing | Data Platform  | Head of Data    | Applied Science, PM | Org          |

---

## Day-end checklist

* [ ] Champions named per function/region; council invite sent
* [ ] Enablement plan & office hours published; registration links live
* [ ] Comms starter pack shipped (IC + Leader versions)
* [ ] Feedback routing documented with **owner + SLA**; first week’s goals set

---

## What “great” looks like

* **Predictable rituals:** office hours happen, agendas used, outcomes posted.
* **Peer momentum:** Champions answer most questions before they hit support.
* **Measurable lift:** adoption, groundedness, and time-to-draft improve—and the stories make it visible.


