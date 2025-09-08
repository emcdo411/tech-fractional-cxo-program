Week12 — Day03: Stress Testing & Scenario Analysis (DaR, SaR, DataVaR, CaR Under Shock)

Save as: wk12/day03_stress_testing_scenarios.md

CXO Lens: Like BlackRock’s market shocks, we run AI shocks: provider outage, prompt-injection surge, legal change, volume spike. We quantify tail exposure and capital buffers (budget, capacity, comms).

Objectives

Build a scenario library with stress multipliers.

Compute DaR/SaR/DataVaR/CaR under stress; rank top exposures.

Define buffers and playbooks for top 3 risks.

Activities (⏱ 75–90m)

Scenario Design (25m) — Inputs, multipliers, duration, dependencies.

Computation (20m) — Portfolio view across use cases; tail percentiles.

Buffers & Hedges (20m) — Reserve capacity, spend headroom, alt-providers.

Tabletop (10–25m) — Walk through one severe and one moderate case.

Deliverables

risk/scenarios/library.md • risk/scenarios/parameters.csv

risk/stress_runs/*.ipynb • risk/buffers_hedges.md

Acceptance & QA

At least 3 scenarios quantified with ranked exposures & buffers.

Actionable hedge recommendations (e.g., 20% traffic to local model).
