Week08 — Day01: Scale Plan & Wave Orchestration (30/60/90)

Save as: wk08/day01_scale_plan_wave_orchestration.md

CXO Lens: We translate the Go decisions into a sequenced wave plan with dependencies, freeze windows, and measurable business outcomes. No mystery work—only funded, scheduled outcomes.

Objectives

Lock Wave plan (environments, cohorts, dates) and freeze windows.

Map dependencies & risks; publish critical path and burndown.

Tie rollout to business KPIs and SLO guardrails.

Lesson Summary

Scaling fails where sequencing fails. We publish a single source of truth for who/what/when, plus a cutover plan that keeps value and safety front and center.

Activities (⏱ 75–90 minutes)

Wave Design (25m) — Cohorts, geos, feature flags, dark-launch scope.

Critical Path (20m) — Dependencies, freeze windows, rollback triggers.

Outcome Tie-in (20m) — KPI deltas per wave; SLO gates per stage.

Burndown Setup (10–25m) — Daily stand-ups, blocker escalation, RAID log.

Deliverables

wk08/scale/wave_plan.md — waves, cohorts, flags, dates, freeze windows.

wk08/scale/critical_path.md — dependencies, owners, risk register.

wk08/scale/burndown_board.csv — tasks, ETA, blocker status (daily).

Acceptance & QA

Each wave has KPI targets and SLO gates; rollback criteria defined.

RAID log active; daily burndown cadence established.

Freeze windows communicated to Ops/SRE/Sec/Legal.

Wave Plan (outline)
Wave: 2A (Ops – NA)
Dates: 10/07–10/18
Flags: retrieval_v2=true, large_model=false
KPIs: AHT −15%, grounded ≥4.2/5
SLO gates: p95≤1200ms, error≤1.0%
Rollback: version 1.3.5, TTR ≤ 30m
Owner: VP Ops
