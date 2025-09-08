Week13 — Day06: Model Lifecycle Governance (Champion/Challenger, Drift & Sunset)

Save as: wk13/day06_model_lifecycle_governance.md

CXO Lens: Models are portfolios with decay. We institutionalize promotion gates, champion/challenger, drift detection, and sunset rules.

Objectives

Define promotion policy (metrics, evals, safety, economics).

Stand up champion/challenger harness with automatic traffic splits.

Create sunset criteria and deprecation playbooks.

Activities (⏱ 75–90m)

Promotion Gates (25m) — Quality, groundedness, cost, privacy, SLO.

Challenger Harness (20m) — 5–20% traffic; stop on breach; auto-report.

Drift & Decay (20m) — Canary monitors; retrain triggers; rollback.

Sunset (10–25m) — Archive models, revoke keys, purge prompts/vectors.

Deliverables

mrm/promotion_policy.md • mrm/champion_challenger.yaml

observability/drift_rules.md • mrm/sunset_playbook.md

Acceptance & QA

One challenger run executed with guardrails and auto-stop proof.

Drift rules live; retrain trigger thresholds documented.
