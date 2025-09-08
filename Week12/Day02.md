Week12 — Day02: Limits Engine & Intraday Monitoring (Green/Yellow/Red in Code)

Save as: wk12/day02_limits_engine_intraday_monitoring.md

CXO Lens: Appetite means nothing without enforcement. We codify intraday limits for KRIs with automatic actions (freeze, degrade, rollback).

Objectives

Implement a limits engine wired to KRIs from the Risk Hub.

Define intraday alerting and automatic controls per KRI band.

Produce the Limits Register dashboard (live).

Activities (⏱ 75–90m)

KRI→Limit Mapping (25m) — Privacy, hallucination, SLO, CaR, DataVaR.

Action Matrix (20m) — What happens at 75/90/100% consumption.

Runtime Hooks (20m) — Connect to feature flags, routing, cache, rollback.

Drill (10–25m) — Simulate a limit breach; confirm action & evidence.

Deliverables

risk/limits_engine.yaml • risk/limits_register.csv

risk/runbooks/limit_breach.md • dash/limits_live.png

Acceptance & QA

Two live KRIs with working intraday actions and proofs in logs.
Breach workflow generates decision log entries automatically.
