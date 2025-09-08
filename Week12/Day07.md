Week12 — Day07: Executive Risk Portfolio Review — Limits, Stress, Concentration, Buffers

Save as: wk12/day07_exec_risk_portfolio_review.md

CXO Lens: We show how the risk engine performs under load: limits, breaches, stress results, concentration posture, and capacity buffers. Then we adjust limits and capital like a portfolio manager.

Objectives

Present intraday limit performance, breaches, actions taken.

Review stress test results and top exposures; approve buffers/hedges.

Decide limit changes and diversification targets for next 90 days.

Agenda (⏱ 75–90m)

Readout (20m) — MIS highlights; breaches; actions; outcomes.

Decisions (25m) — Limit raises/cuts; buffer funding; vendor mix changes.

Plan (20m) — 30/60/90 for routing, contracts, capacity upgrades.

Comms (10–25m) — Board note; vendor updates; internal policy change.

Deliverables

wk12/exec_risk_portfolio_readout.md

wk12/decision_log.md (limit changes, buffer allocations, routing updates)

wk12/3090_risk_improvements.md

Decision Criteria (traffic-light)
Dimension	Raise Limit	Hold Limit	Cut Limit
Breach History	None / clean mitigations	Occasional / contained	Repeated / unresolved
Stress Posture	Low tail exposure	Moderate, buffers funded	High, buffers unfunded
Concentration	HHI falling, diversity up	Flat	HHI rising, single-point fragility
Capacity	Headroom ≥ 25%	10–25%	< 10%
Example Decision Log Entry
id: DEC-2025-11-14-02
title: Cut Concentration Limit — Provider A to 55%
owner: Head of Platform
rationale: HHI rising; recent soft outage increased CaR tail
actions:
  - routing_weights: "providerA:0.55, providerB:0.30, local:0.15"
  - contract: "burst_SLA + credits addendum by 2025-11-28"
  - buffer: "pre-warm local model v3.1 capacity +20%"
status: Approved

Acceptance & QA

Decisions logged within 24h with updated limits & routing policies.

Board-facing summary packaged and scheduled.
