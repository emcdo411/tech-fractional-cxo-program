Week11 — Day03: Measurement Framework — “Value-at-Risk” for AI (DaR, SaR, DataVaR)

Save as: wk11/day03_measurement_framework_var_for_ai.md

CXO Lens: We operationalize Value-at-Risk analogs for AI:
DaR (Decision-at-Risk), SaR (Safety-at-Risk), DataVaR (Data-at-Risk), and Cost-at-Risk (CaR).

Objectives

Define formulas & collection for DaR, SaR, DataVaR, CaR.

Build scenario overlays (stress multipliers) per risk class.

Publish daily risk MIS spec.

Activities (⏱ 75–90m)

Metrics Spec (25m) — Inputs, windows, percentiles, confidence.

Scenarios (20m) — Volume spikes, provider outage, jailbreak surge.

MIS Layout (20m) — Heatmap + breaches + actions + owner.

Validation (10–25m) — Backtest last month; sanity checks.

Deliverables

risk/metrics_spec.md

risk/scenario_library.md

risk/mis_layout.png

Formulas (illustrative)

DaR (Decision-at-Risk): expected value loss at percentile p from wrong/unsafe actions
DaR_p = P(wrong|context) × Impact($) @ p

SaR (Safety-at-Risk): toxicity/unsafe completion tail at p95

DataVaR: probability-weighted exposure of sensitive data crossings

CaR: p95 of unit cost variance × volume
