Week08 — Day02: Production Readiness & Gameday (Resilience First)

Save as: wk08/day02_prod_readiness_gameday.md

CXO Lens: Reliability is earned. We formalize PRR, run chaos/gameday, and prove we can fail safely.

Objectives

Complete Production Readiness Review (PRR) with sign-offs.

Execute load & chaos tests (timeouts, provider failover, cache cold-start).

Validate rollback drills and incident command (IC) flow.

Activities

PRR Checklist (25m) — Runbooks, on-call, dashboards, secrets, quotas.

Load/Chaos (25m) — Spike test, fail provider, throttle embeddings, disk full.

Rollback Drill (15m) — Simulated Sev-2, cut to previous model, verify.

IC Tabletop (10–25m) — Comms templates; MTTA/MTTR rehearsal.

Deliverables

wk08/readiness/prr_checklist.md — signed by SRE, Sec, Product, Platform.

wk08/readiness/gameday_report.md — issues, fixes, evidence links.

wk08/runbooks/rollback.md — step-by-step with screenshots/logs.

Acceptance & QA

All PRR checks green; exceptions time-boxed ≤ 14 days.

Gameday produced action items with owners & dates.

Rollback verified end-to-end in ≤ 30 minutes.
