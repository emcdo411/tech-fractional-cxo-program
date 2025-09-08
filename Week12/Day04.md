Week12 — Day04: Concentration Risk & Diversification (Vendors, Models, Regions)

Save as: wk12/day04_concentration_risk_diversification.md

CXO Lens: Concentration kills resilience. We measure vendor/model/region exposure with HHI and enforce diversification strategies in routing.

Objectives

Compute HHI and exposure limits per dimension.

Propose diversification targets and routing policies.

Add limits to the engine for concentration KRIs.

Activities (⏱ 75–90m)

Exposure Map (25m) — Traffic, tokens, spend by provider/model/region.

HHI & Limits (20m) — Thresholds; Translate to KRIs and alerts.

Routing Design (20m) — Fallbacks, weights, geo-affinity, privacy tiers.

Test (10–25m) — Simulate loss of top provider; confirm continuity.

Deliverables

risk/concentration/exposure_report.csv • risk/concentration/hhi_calc.ipynb

platform/routing/diversification_policy.yaml

Acceptance & QA

Primary provider exposure reduced to ≤ 60% (target) with working fallback.

HHI trend visible in weekly MIS.
