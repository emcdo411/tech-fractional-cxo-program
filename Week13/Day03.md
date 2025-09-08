Week13 — Day03: Advanced Privacy Engineering (DP Budgets, Synthetic & Federated)

Save as: wk13/day03_advanced_privacy_engineering.md

CXO Lens: Privacy is a budget we manage, not a banner we wave. We define DP budgets, govern synthetic data, and set federated/edge standards.

Objectives

Establish differential privacy (DP) budgets and approval gates.

Create synthetic data SOP (fitness tests, leakage probes, governance).

Define federated/edge guardrails (PII tiers, aggregation proofs).

Activities (⏱ 75–90m)

DP Budgeting (25m) — Epsilon per use case; audit trail for spend.

Synthetic SOP (20m) — Utility vs. leakage tests; release criteria.

Federated Guardrails (20m) — Keys, secure aggregation, deletion proofs.

Probe Suite (10–25m) — PII leakage tests integrated into CI.

Deliverables

privacy/dp_budget_policy.md • privacy/dp_registry.csv

privacy/synthetic_sop.md • privacy/federated_guardrails.md

privacy/leakage_probe_suite.md

Acceptance & QA

DP registry live with owner, budget, and logs.

Synthetic datasets pass utility + leakage gates before use.
