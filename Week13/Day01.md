Week13 — Day01: Vendor & Counterparty Risk (Financial + Technical Resilience)

Save as: wk13/day01_vendor_counterparty_risk.md

CXO Lens: In 1988 it was broker/dealer risk; today it’s model/infra vendors. We quantify financial health, operational resilience, security posture, and data rights—then wire those scores into routing and contract terms.

Objectives

Build a Vendor Risk Scorecard (financial, operational, security, privacy, legal).

Produce failure playbooks (bankruptcy, outage, breach, export restrictions).

Connect scores to routing weights and capital allocation.

Lesson Summary

No single vendor should be a single point of failure. We formalize exposure, test exits, and make diversification a policy, not a wish.

Activities (⏱ 75–90m)

Exposure Map (25m) — Spend/traffic/tokens by provider, model, region.

Scorecard Design (20m) — Criteria, weights, red-line thresholds.

Playbooks (20m) — Bankruptcy, sanction, key-person, API sunset.

Controls (10–25m) — Routing caps, escrow/egress clauses, audit rights.

Deliverables

vendor/risk_scorecards/*.md • vendor/exposure_report.csv

vendor/failure_playbooks/*.md • vendor/contracts/addenda.md

Acceptance & QA

Top 3 vendors scored; red-line criteria and routing caps approved.

At least one table-top exit drill completed with evidence links.
